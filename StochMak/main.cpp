#include "AvellanedaStrategy.h"
#include "init.h"
#include "binance.h"
#include "TradeData.h"
#include "Handler.h"
#include "EstimationAlgo.h"
#include "Utility.h"

#include <algorithm>
#include <exception>
#include <armadillo>
#include <iomanip>
#include <Eigen/Dense>

TradeData trade_data;
double mid_price;
double inventory = AvellanedaStrategy::initial_inventory;

void GetUserStreamKeyThread(Json::Value& userResult)
{
    while (true)
    {
        Binance::GetUserStreamKey(userResult);
        std::this_thread::sleep_for(std::chrono::minutes(30));
    }
}

Json::Value userResult;
Json::Value json_result;

int main()
{
    // Set api key and secret key
    Binance::init(API_KEY,SECRET_KEY);
    Binance::GetUserStreamKey(userResult);
    std::string userStreamKey = userResult["listenKey"].asString();
    std::string ws_path = "/ws/" + userStreamKey;
    std::string aggTrade_path =  "/ws/" + AvellanedaStrategy::ticker_ + "@trade";
    std::string bookTicker_path = "/ws/" + AvellanedaStrategy::ticker_ + "@bookTicker";

    // Setting websocket endpoints
    Binance::connect_endpoint(bookTickerOnData,
                            BINANCE_WS_HOST,
                            BINANCE_WS_PORT,
                            bookTicker_path.c_str());
    Binance::connect_endpoint(userStreamOnData,
                            BINANCE_WS_HOST,
                            BINANCE_WS_PORT,
                            ws_path.c_str());
    Binance::connect_endpoint(aggTradeOnData,
                            BINANCE_WS_HOST,
                            BINANCE_WS_PORT,
                            aggTrade_path.c_str());

    // Start the websocket handler
    auto g = std::async(std::launch::async,Binance::enter_event_loop);
    auto i = std::async(std::launch::async,GetUserStreamKeyThread, std::ref(userResult));

    // Sleep for the sync 
    std::this_thread::sleep_for(std::chrono::seconds(3));

    // Start Time stamp
    auto last_estimation_timestamp = GetTimeInMilliSec();
    auto last_trade_timestamp = 0LL;
    auto current_timestamp = 0LL;
    auto last_cancel_timestamp = 0LL;
    auto closed_timestamp = 0LL;
    double cash = 0.0;
    double normed_inventory = 0;
    double ask_price = std::exp(100);
    double bid_price = std::exp(-100);

    // Market making loop
    while (true)
    {
        current_timestamp = GetTimeInMilliSec();
        if (current_timestamp - closed_timestamp > AvellanedaStrategy::order_interval_)
        {
            trade_data.closed_price.push_back(mid_price);
            closed_timestamp = GetTimeInMilliSec();
        }
        if (current_timestamp - last_estimation_timestamp > AvellanedaStrategy::estimation_interval_)
        {
            Eigen::VectorXd price = Eigen::Map<Eigen::VectorXd>(trade_data.price.data(),trade_data.price.size());
            Eigen::VectorXd timestamp = Eigen::Map<Eigen::VectorXd>(trade_data.timestamp.data(),trade_data.timestamp.size());
            Eigen::VectorXd closed_price = Eigen::Map<Eigen::VectorXd>(trade_data.closed_price.data(),trade_data.closed_price.size());
            Eigen::VectorXd price_diff(closed_price.size());
            std::adjacent_difference(closed_price.begin(),closed_price.end(),price_diff.begin());
            price_diff = price_diff.segment(1,price_diff.size()-1)/AvellanedaStrategy::tick_size_;

            auto drift = std::async(std::launch::async, CalculateDrift, std::ref(price_diff));
            auto volatility = std::async(std::launch::async, CalculateVolatility, std::ref(price_diff));
            auto bid_Ak = std::async(std::launch::async, CalculateProbExecutionBid,
                price,timestamp,100,500,AvellanedaStrategy::tick_size_,AvellanedaStrategy::order_interval_);
            auto ask_Ak = std::async(std::launch::async, CalculateProbExecutionAsk,
                price,timestamp,100,500,AvellanedaStrategy::tick_size_,AvellanedaStrategy::order_interval_);
            
            //TODO: 이상한 값이 들어오는거 수정!!!!
            //TODO: MA 로 평활화 시키기.
            trade_data.price.erase(trade_data.price.begin(),trade_data.price.begin() + trade_data.price.size()/5);
            trade_data.timestamp.erase(trade_data.timestamp.begin(),trade_data.timestamp.begin()+trade_data.timestamp.size()/5);
            trade_data.isMakerBuy.erase(trade_data.isMakerBuy.begin(),trade_data.isMakerBuy.begin() + trade_data.isMakerBuy.size()/5);
            trade_data.closed_price.erase(trade_data.closed_price.begin(),trade_data.closed_price.begin() + trade_data.closed_price.size()/5);
            
            std::pair<double,double> bid_param = bid_Ak.get();
            std::pair<double,double> ask_param = ask_Ak.get();
            AvellanedaStrategy::drift_ = drift.get();
            AvellanedaStrategy::volatility_ = volatility.get();
            AvellanedaStrategy::A_buy_ = bid_param.first;
            AvellanedaStrategy::k_buy_ = bid_param.second;
            AvellanedaStrategy::A_sell_ = ask_param.first;
            AvellanedaStrategy::k_sell_ = ask_param.second;

            std::cout << "k bid: " << AvellanedaStrategy::k_buy_ << std::endl;
            std::cout << "A bid: " << AvellanedaStrategy::A_buy_ << std::endl;
            std::cout << "k ask: " << AvellanedaStrategy::k_sell_ << std::endl;
            std::cout << "A ask: " << AvellanedaStrategy::A_sell_ << std::endl;
            std::cout << "drift: " << AvellanedaStrategy::drift_ << std::endl;
            std::cout << "volatility: " << AvellanedaStrategy::volatility_ << std::endl;
            std::cout << "=====================================" << std::endl;
            last_estimation_timestamp = GetTimeInMilliSec();
        }
        if (current_timestamp - last_trade_timestamp > AvellanedaStrategy::order_interval_)
        {
            // Binance::CancelAllOrders("BTCTUSD", json_result);
            // double normed_inventory = 0;//inventory / AvellanedaStrategy::order_quantity_;
            std::cout << "inventory: " << normed_inventory << std::endl;
            int decimal_places = GetDecimalPlaces(AvellanedaStrategy::tick_size_);
            // double ask_price = round_digit(mid_price
            //     + AvellanedaStrategy::GetAskPriceDrift(normed_inventory),decimal_places + 1);
            // double bid_price = round_digit(mid_price 
            //     - AvellanedaStrategy::GetBidPriceDrift(normed_inventory),decimal_places + 1);

            std::cout << std::fixed << std::setprecision(decimal_places) <<
            AvellanedaStrategy::GetAskPriceDrift(normed_inventory) << std::endl;

            std::cout <<std::fixed << std::setprecision(decimal_places)<<
            AvellanedaStrategy::GetBidPriceDrift(normed_inventory) << std::endl;

            if (normed_inventory >= AvellanedaStrategy::max_inventory_)
            {
                ask_price = round_digit(mid_price
                + AvellanedaStrategy::GetAskPriceDrift(normed_inventory),decimal_places + 1);
                // Binance::PostLimitSell("BTCTUSD",
                //                         AvellanedaStrategy::order_quantity_,
                //                         ask_price,
                //                         json_result);
                std::cout << "Ask: " << ask_price << std::endl;
            }
            else if (normed_inventory <= -1 * AvellanedaStrategy::max_inventory_)
            {
                bid_price = round_digit(mid_price 
                - AvellanedaStrategy::GetBidPriceDrift(normed_inventory),decimal_places + 1);
                // Binance::PostLimitBuy("BTCTUSD",
                //                         AvellanedaStrategy::order_quantity_,
                //                         bid_price,
                //                         json_result);
                std::cout << "Bid: " << bid_price << std::endl;
            }
            else
            {
                // Binance::PostLimitBuy("BTCTUSD",
                //                         AvellanedaStrategy::order_quantity_,
                //                         bid_price,
                //                         json_result);

                // Binance::PostLimitSell("BTCTUSD",
                //                         AvellanedaStrategy::order_quantity_,
                //                         ask_price,
                //                         json_result);
                ask_price = round_digit(mid_price
                + AvellanedaStrategy::GetAskPriceDrift(normed_inventory),decimal_places + 1);
                bid_price = round_digit(mid_price 
                - AvellanedaStrategy::GetBidPriceDrift(normed_inventory),decimal_places + 1);
                std::cout << "Ask: " << ask_price << std::endl;
                std::cout << "Mid: " << mid_price << std::endl;
                std::cout << "Bid: " << bid_price << std::endl;
            }
        last_trade_timestamp = GetTimeInMilliSec();
        std::cout << "pnl: " << cash + normed_inventory * mid_price * AvellanedaStrategy::order_quantity_ << std::endl;
        std::cout << "=====================================" << std::endl;
        }
        if (ask_price <= trade_data.price.back())
        {
            std::cout << "ask executed!" << std::endl;
            cash += ask_price * AvellanedaStrategy::order_quantity_;
            normed_inventory -= 1;
            ask_price = std::exp(100);
        }

        if (bid_price >= trade_data.price.back())
        {
            std::cout << "bid executed!" << std::endl;
            cash -= bid_price * AvellanedaStrategy::order_quantity_;
            normed_inventory += 1;
            bid_price = std::exp(-100);
        }
    }
	return 0;
}
