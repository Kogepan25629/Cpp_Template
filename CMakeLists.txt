set(PROJECT_NAME R_RPG)
project(${PROJECT_NAME} CXX)

cmake_minimum_required(VERSION 3.16)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_CXX_FLAGS "--exec-charset=cp932")
#cp932

add_executable(${PROJECT_NAME} ./src/main.cpp)