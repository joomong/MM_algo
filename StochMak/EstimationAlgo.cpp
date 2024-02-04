#include "EstimationAlgo.h"


double CalculateDrift(Eigen::VectorXd &price_diff)
{
    double drift = price_diff.mean();
    return drift;
}

double CalculateVolatility(Eigen::VectorXd &price_diff)
{
    double volatility = std::sqrt((price_diff.array() - price_diff.mean()).square().sum()/(price_diff.size()-1));
    return volatility;
}

int LambdaFunctor::operator()(const Eigen::VectorXd &x , Eigen::VectorXd &fvec) const
{
    float A = x(0);
    float k = x(1);

    for (int i = 0; i < values(); i++)
    {
        float xVal = measuredValues(i, 0);
        float yVal = measuredValues(i, 1);
        fvec(i) = yVal - A * exp(-k * xVal);
    }
    return 0;
}

int LambdaFunctor::df(const Eigen::VectorXd &x , Eigen::MatrixXd &fjac) const
{
    float epsilon;
    epsilon = 1e-5f;

    for (int i = 0; i < x.size(); i++) {
        Eigen::VectorXd xPlus(x);
        xPlus(i) += epsilon;
        Eigen::VectorXd xMinus(x);
        xMinus(i) -= epsilon;

        Eigen::VectorXd fvecPlus(values());
        operator()(xPlus, fvecPlus);

        Eigen::VectorXd fvecMinus(values());
        operator()(xMinus, fvecMinus);

        Eigen::VectorXd fvecDiff(values());
        fvecDiff = (fvecPlus - fvecMinus) / (2.0f * epsilon);

        fjac.block(0, i, values(), 1) = fvecDiff;
    }
    return 0;
}

std::pair<double, double> CalculateProbExecutionAsk(const Eigen::VectorXd price,
                                                    const Eigen::VectorXd timestamp,
                                                    int trial_num,
                                                    int max_tick,
                                                    double tick_size,
                                                    long long order_interval)
{
    Eigen::MatrixXd event_list = Eigen::MatrixXd::Zero(max_tick, trial_num);
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<int> dis(0, static_cast<int>(timestamp.size() * 0.5));

    for (int i = 0; i < max_tick; i++)
    {
        for (int j = 0; j < trial_num; j++)
        {
            int time_idx = dis(gen);
            double price_diff;
            int event_count = 0;
            long long initial_time = static_cast<long long>(timestamp(time_idx));
            double initial_price = price(time_idx);
            long long time_diff = 0;

            while (time_diff < order_interval)
            {
                price_diff = (price(time_idx) - initial_price) / tick_size;
                time_diff = static_cast<long long>(timestamp(time_idx)) - initial_time;

                if (price_diff > i)
                {
                    event_count += 1;
                    break;
                }
                if (time_idx == price.size() - 1)
                {
                    break;
                }
                time_idx += 1;
            }
            event_list(i, j) = event_count;
        }
    }

    Eigen::VectorXd event_list_mean = event_list.rowwise().mean();
    int m = event_list_mean.size();
    Eigen::MatrixXd measuredValues(m, 2);
    for (int i = 0; i < m; i++) 
    {
        measuredValues(i, 0) = i;
        measuredValues(i, 1) = event_list_mean[i];
    }
	int n = 2;
	Eigen::VectorXd x(n);
	x(0) = 0.8;
	x(1) = 0.01;

	LambdaFunctor functor;
	functor.measuredValues = measuredValues;
	functor.m = m;
	functor.n = n;

	Eigen::LevenbergMarquardt<LambdaFunctor, double> lm(functor);
	int status = lm.minimize(x);
    double A = x(0);
    double k = x(1);
    
    return std::make_pair(A, k);
}

std::pair<double, double> CalculateProbExecutionBid(const Eigen::VectorXd price,
                                                    const Eigen::VectorXd timestamp,
                                                    int trial_num,
                                                    int max_tick,
                                                    double tick_size,
                                                    long long order_interval)
{
    Eigen::MatrixXd event_list = Eigen::MatrixXd::Zero(max_tick, trial_num);
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<int> dis(0, static_cast<int>(timestamp.size() * 0.5));

    for (int i = 0; i < max_tick; i++)
    {
        for (int j = 0; j < trial_num; j++)
        {
            int time_idx = dis(gen);
            double price_diff;
            int event_count = 0;
            long long initial_time = static_cast<long long>(timestamp(time_idx));
            double initial_price = price(time_idx);
            long long time_diff = 0;

            while (time_diff < order_interval)
            {
                price_diff = (price(time_idx) - initial_price) / tick_size;
                time_diff = static_cast<long long>(timestamp(time_idx)) - initial_time;

                if (price_diff < -i)
                {
                    event_count += 1;
                    break;
                }
                if (time_idx == price.size() - 1)
                {
                    break;
                }
                time_idx += 1;
            }
            event_list(i, j) = event_count;
        }
    }

    Eigen::VectorXd event_list_mean = event_list.rowwise().mean();
    int m = event_list_mean.size();
    Eigen::MatrixXd measuredValues(m, 2);
    for (int i = 0; i < m; i++) 
    {
        measuredValues(i, 0) = i;
        measuredValues(i, 1) = event_list_mean[i];
    }
	int n = 2;
	Eigen::VectorXd x(n);
	x(0) = 0.8;
	x(1) = 0.01;

	LambdaFunctor functor;
	functor.measuredValues = measuredValues;
	functor.m = m;
	functor.n = n;

	Eigen::LevenbergMarquardt<LambdaFunctor, double> lm(functor);
	int status = lm.minimize(x);
    double A = x(0);
    double k = x(1);
    
    return std::make_pair(A, k);
}