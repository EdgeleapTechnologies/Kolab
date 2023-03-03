#!/bin/bash
cd "$(dirname "$0")"
cd ..

SOURCES=`find . -regextype posix-extended -regex '^.*(Client|Server|Common)(\/).*(\.cpp|\.c|\.hpp|\.h)$'`
SOURCES="$(echo "$SOURCES"|tr '\n' ' ')"

clang-tidy --config-file=.clang-tidy $SOURCES
