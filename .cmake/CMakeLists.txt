cmake_minimum_required(VERSION 3.20.0)
project(sample)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(sample main.cpp)
target_compile_options(sample PRIVATE 
    $<$<CONFIG:RELEASE>:-fopenmp> # release options -O3 is enabled by default
    $<$<CONFIG:DEBUG>:-fsanitize=address> # debug options -g is enabled by default
	)
target_include_directories(sample PRIVATE )
target_link_libraries(sample PRIVATE )
