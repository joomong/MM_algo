cmake_minimum_required(VERSION 3.15)
project(avellaneda_algo)

set(CMAKE_CXX_STANDARD 17)

add_executable(
        avellaneda
        # futures
        main.cpp
        # futures.cpp
        AvellanedaStrategy.cpp
        jsoncpp.cpp
        EstimationAlgo.cpp
        Handler.h
        init.h
        TradeData.h
        Utility.cpp)

add_compile_options(-g -O2)


target_include_directories(
    avellaneda 
    # futures
    PRIVATE
    /home/ubuntu/Crypto-API/src
    /usr/include/
    /usr/include/curl
    /usr/include/openssl
    /usr/include/eigen3)

target_link_libraries(
    avellaneda 
    # futures
    PRIVATE
    /home/ubuntu/Crypto-API/build/lib/libcryptoapi.so
    /usr/lib/libarmadillo.so
    /usr/lib/x86_64-linux-gnu/libwebsockets.so
    /usr/lib/x86_64-linux-gnu/libcurl.so
    /usr/lib/x86_64-linux-gnu/libcrypto.so)
