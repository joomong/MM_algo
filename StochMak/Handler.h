#ifndef Handler_H

#include <vector>

extern TradeData trade_data;
extern double mid_price;
extern double inventory;

int aggTradeOnData(Json::Value &json_result) 
{
    trade_data.price.push_back(std::stod(json_result["p"].asString()));
    trade_data.quantity.push_back(std::stod(json_result["q"].asString()) * std::stod(json_result["p"].asString()));
    trade_data.isMakerBuy.push_back(json_result["m"].asBool());
    trade_data.timestamp.push_back(std::stod(json_result["T"].asString()));
}

int userStreamOnData(Json::Value &json_result)
{
    Json::Value order_result;
    std::string action = json_result["e"].asString();
    if (action == "executionReport")
    {
        std::string x = json_result["X"].asString();
        if (x == "FILLED")
        {
            std::string side = json_result["S"].asString();
            double qty = std::stod(json_result["z"].asString()); // last executed quantity
            if (side == "SELL")
            {
                inventory -= qty;
            } else
            {
                inventory += qty;
            }
        }
    }
}

int bookTickerOnData(Json::Value &json_result)
{
    double best_bid = std::stod(json_result["b"].asString());
    double best_ask = std::stod(json_result["a"].asString());
    mid_price = (best_bid + best_ask) * 0.5;
}

#endif //Handler_H