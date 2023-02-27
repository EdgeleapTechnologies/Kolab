#!/bin/bash

SOURCES=`find . -regextype posix-extended -regex '^.*(Client|Server|Common)(\/|\\).*(\.cpp|\.c|\.hpp|\.h)$'`

echo "$SOURCES"
