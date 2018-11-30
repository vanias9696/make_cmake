cmake_minimum_required(VERSION 3.0)

project(Calculator)

set(EXECUT "calculator")

add_library(lib STATIC calculator.cpp calculator.h)

add_executable(${EXECUT} main.cpp)

target_link_libraries(${EXECUT} lib)