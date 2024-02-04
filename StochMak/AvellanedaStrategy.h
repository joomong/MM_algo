#ifndef AVELLANEDA_STRATEGY_H
#define AVELLANEDA_STRATEGY_H

#include <string>
#include <utility>
#include <future>
#include <thread>
#include <numeric>
#include <armadillo>
#include <algorithm>
#include <iostream>
#include <queue>

#include "cmath"
#include "binanceusdm.h"

class AvellanedaStrategy {
public:
    static std::string ticker_;
    static double tick_size_;
    static double max_inventory_;
    static int order_interval_;
    static int estimation_interval_;
    static double risk_aversion_;
    static double order_quantity_;
    static double volatility_;
    static double drift_;
    static double A_buy_;
    static double k_buy_;
    static double A_sell_;
    static double k_sell_;
    static double initial_inventory;

    static double GetAskPrice(double const& inventory);
    static double GetBidPrice(double const& inventory);
    static double GetAskPriceDrift(double const& inventory);
    static double GetBidPriceDrift(double const& inventory);
};

#endif