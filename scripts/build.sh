#!/bin/bash

# clang is used as the default compiler
CXX_COMPILER="clang++"
C_COMPILER="clang"
for var in "$@"
do
    if [ "$var" = "--clang" ]; then
        C_COMPILER="clang"
        CXX_COMPILER="clang++"
    fi
    if [ "$var" = "--gcc" ]; then
        C_COMPILER="gcc"
        CXX_COMPILER="g++"
    fi
done

mkdir build
mkdir build/linux-$C_COMPILER
cd build/linux-$C_COMPILER

cmake -G Ninja -DCMAKE_C_COMPILER=$C_COMPILER -DCMAKE_CXX_COMPILER=$CXX_COMPILER ../..
cmake --build .