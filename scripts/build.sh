#!/bin/bash

# clang is used as the default compiler
CXX_COMPILER="clang++"
C_COMPILER="clang"
BUILD_TESTS=$false
BUILD_ONLY_TEST=$false
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
    if [ "$var" = "--test" ]; then
        BUILD_TESTS=$true
    fi
    if [ "$var" = "--test-only" ]; then
        BUILD_TESTS=$true
        BUILD_ONLY_TEST=$true
    fi
done


if [ ! -d build/linux-$C_COMPILER ]; then
    mkdir build
    mkdir build/linux-$C_COMPILER
    cd build/linux-$C_COMPILER
    cmake -G Ninja -DCMAKE_C_COMPILER=$C_COMPILER -DCMAKE_CXX_COMPILER=$CXX_COMPILER ../..
fi

if [ $BUILD_ONLY_TEST -eq $false ]; then
    cmake --build . -j
fi
if [ $BUILD_TESTS -eq $true ]; then
    cmake --build . -j --target kolab-tests
fi

if [ -e compile_commands.json ]; then
    cp compile_commands.json ../..
fi
cd ../..
