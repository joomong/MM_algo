#ifndef EstimationAlgo_H

#include <vector>
#include <utility>
#include <random>
#include <armadillo>
#include <Eigen/Dense>
#include <unsupported/Eigen/NonLinearOptimization>

double CalculateDrift(Eigen::VectorXd &price_diff);
double CalculateVolatility(Eigen::VectorXd &price_diff);
std::pair<double,double> CalculateProbExecutionBid(Eigen::VectorXd price,
                                                    Eigen::VectorXd timestamp,
                                                    int trial_num, 
                                                    int max_tick,
                                                    double tick_size,
                                                    long long order_interval);
std::pair<double,double> CalculateProbExecutionAsk(Eigen::VectorXd price,
                                                    Eigen::VectorXd timestamp,
                                                    int trial_num, 
                                                    int max_tick,
                                                    double tick_size,
                                                    long long order_interval);

struct LambdaFunctor
{
	Eigen::MatrixXd measuredValues;
	int m;
	int n;
	int operator()(const Eigen::VectorXd &x, Eigen::VectorXd &fvec) const;
	int df(const Eigen::VectorXd &x, Eigen::MatrixXd &fjac) const;
	int values() const { return m; }
	int inputs() const { return n; }
};

#endif // !EstimationAlgo_H