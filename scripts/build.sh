#!/bin/bash

mkdir build-ninja
cd build-ninja
cmake -G Ninja -DCMAKE_C_COMPILER="Clang" -DCMAKE_CXX_COMPILER="Clang" ..