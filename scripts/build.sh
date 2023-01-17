#!/bin/bash

mkdir build-ninja
cd build-ninja
cmake -G Ninja -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang" ..