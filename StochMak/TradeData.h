#ifndef TradeData_H
#include <vector>

struct TradeData
{
    std::vector<double> price;
    std::vector<double> quantity;
    std::vector<double> timestamp;
    std::vector<bool> isMakerBuy;
    std::vector<double> closed_price;
};

#endif // TradeData_H