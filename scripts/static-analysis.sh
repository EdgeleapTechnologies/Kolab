#!/bin/bash

find . -regextype posix-extended -regex '^.*(Client|Server|Common)(\/|\\).*(\.cpp|\.c|\.hpp|\
.h)$'
