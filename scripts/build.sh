#!/bin/bash

CXX_COMPILER="clang++"
C_COMPILER="clang"
if [ $# -eq 1 ]; then
    if [ "$1" = "--clang" ]; then
        C_COMPILER="clang"
        CXX_COMPILER="clang++"
    fi
    if [ "$1" = "--gcc" ]; then
        C_COMPILER="gcc"
        CXX_COMPILER="g++"
    fi
fi

mkdir build-ninja
cd build-ninja
cmake -G Ninja -DCMAKE_C_COMPILER=$C_COMPILER -DCMAKE_CXX_COMPILER=$CXX_COMPILER ..
cmake --build .