#!/bin/bash

#TODO(Tiago): need to add check for the type of windowing system and install the corresponding dependencies

#for x11 systems
sudo apt-get update
sudo apt-get install -y llvm cmake ninja-build --fix-missing
sudo apt-get install -y xorg-dev --fix-missing