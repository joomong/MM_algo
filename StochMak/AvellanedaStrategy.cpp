#include "AvellanedaStrategy.h"

double AvellanedaStrategy::GetAskPriceDrift(double const &inventory)
{
    double ask_delta = (1.0 / risk_aversion_) * log(1.0 + risk_aversion_ / k_buy_)
                        + (drift_ / (risk_aversion_ * volatility_ * volatility_) 
                        - (2.0 * inventory - 1.0) / 2.0)
                        * sqrt((volatility_ * volatility_ * risk_aversion_) / (2.0 * k_buy_ * A_buy_) 
                        * pow(1.0 + risk_aversion_ / k_buy_ , 1.0 + k_buy_ / risk_aversion_));
    double ask_price = (std::max(ask_delta,1.0)-0.5+5) * tick_size_;
    return ask_price;
}


double AvellanedaStrategy::GetBidPriceDrift(double const &inventory)
{
    double bid_delta = (1.0 / risk_aversion_) * log(1.0 + risk_aversion_ / k_sell_)
                        + (-drift_ / (risk_aversion_ * volatility_ * volatility_) 
                        + (2.0 * inventory + 1.0) / 2.0)
                        * sqrt((volatility_ * volatility_ * risk_aversion_) / (2.0 * k_sell_ * A_sell_) 
                        * pow(1.0 + risk_aversion_ / k_sell_ , 1.0 + k_sell_ / risk_aversion_));
    double bid_price = (std::max(bid_delta,1.0)-0.5 + 5) * tick_size_;
    return bid_price;
}


double AvellanedaStrategy::GetAskPrice(double const &inventory)
{
    double ask_delta = (1 / risk_aversion_) * log(1 + risk_aversion_ / k_buy_)
                    - ((2.0 * inventory - 1)) / 2
                    * sqrt(volatility_ * volatility_ * risk_aversion_/(2 * k_buy_ * A_buy_) 
                    * pow((1 + risk_aversion_ / k_buy_), 1 + k_buy_ / risk_aversion_));
    double ask_price = (std::max(ask_delta,1.0) + 0.5) * tick_size_;
    return ask_price;
}


double AvellanedaStrategy::GetBidPrice(double const &inventory)
{
    double bid_delta = (1 / risk_aversion_) * log(1 + risk_aversion_ / k_sell_)
                       + ((2.0 * inventory + 1)) / 2
                       * sqrt(volatility_ * volatility_ * risk_aversion_/(2 * k_sell_ * A_sell_) 
                       * pow((1 + risk_aversion_ / k_sell_), 1 + k_sell_ / risk_aversion_));
    double bid_price = (std::max(bid_delta,1.0) - 0.5) * tick_size_;
    return bid_price;
}