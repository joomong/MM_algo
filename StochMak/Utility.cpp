#include "Utility.h"

double round_digit(double num, int d)
{
    double t = pow(10, d - 1);
    return round(num * t) / t;
}


int GetDecimalPlaces(double number)
{
    double fractionalPart = std::abs(number - std::floor(number));
    int decimalPlaces = 0;
    while (std::abs(fractionalPart) > 1e-8) 
    {
        fractionalPart *= 10;
        fractionalPart = std::abs(fractionalPart - std::floor(fractionalPart));
        decimalPlaces++;
    }
    return decimalPlaces;
}


double avg(std::vector<double> &Data)
{
    double sum = std::accumulate(Data.begin(), Data.end(), 0.0);
    return sum / Data.size();
}


long long GetTimeInMilliSec() {
    return std::chrono::duration_cast<std::chrono::milliseconds>(
                   std::chrono::system_clock::now().time_since_epoch())
            .count();
}

long long GetTimeInSec() {
    return std::chrono::duration_cast<std::chrono::seconds>(
                   std::chrono::system_clock::now().time_since_epoch())
            .count();
}