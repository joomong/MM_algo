#ifndef INIT_H

#include "AvellanedaStrategy.h"

// set api key and secret
std::string API_KEY ="rqUkbaF9xvMrRJQs9m87g2GlgxMKkaHQUiMHFInTTBoJxzFG8hM9tdXpSN0fj0PY";
std::string SECRET_KEY = "JSy54Uaw62k898J17mRPmC8ptL2VBdBTTORr4x3pOflH6dFDa0NeIFw279Pzyvex";

/* Set parameters here */
std::string AvellanedaStrategy::ticker_ = "btctusd";
double AvellanedaStrategy::tick_size_ = 0.01;
int AvellanedaStrategy::order_interval_ = 10 * 1000;
int AvellanedaStrategy::estimation_interval_ = 1000 * 1000; 
double AvellanedaStrategy::order_quantity_ = 1;
double AvellanedaStrategy::max_inventory_ = 5;
double AvellanedaStrategy::volatility_ = 700;
double AvellanedaStrategy::drift_ = 0;
double AvellanedaStrategy::risk_aversion_ = 0.00001;
double AvellanedaStrategy::A_buy_ = 0.8;
double AvellanedaStrategy::k_buy_ = 0.009;
double AvellanedaStrategy::A_sell_ = 0.8;
double AvellanedaStrategy::k_sell_ = 0.009; //TODO: Too big number then make spread nan
double AvellanedaStrategy::initial_inventory = 0;

#endif // INIT_H