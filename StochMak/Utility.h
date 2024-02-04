#ifndef Utility_H

#include <vector>
#include <chrono>
#include <cmath>
#include <numeric>

double round_digit(double num, int d);
int GetDecimalPlaces(double number);
double avg(std::vector<double> &Data);
long long GetTimeInMilliSec();
long long GetTimeInSec();

#endif //Utility_H