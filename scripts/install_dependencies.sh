#!/bin/bash

#TODO(Tiago): need to add check for the type of windowing system and install the corresponding dependencies

#for x11 systems
sudo apt-get update
sudo apt-get install -y llvm cmake ninja-build --fix-missing
sudo apt-get install -y xorg-dev --fix-missing

#install opengl dev libs
sudo apt-get install -y mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev --fix-missing

#install Vulkan dev libs from lunarg
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | sudo tee /etc/apt/trusted.gpg.d/lunarg.asc
sudo wget -qO /etc/apt/sources.list.d/lunarg-vulkan-jammy.list http://packages.lunarg.com/vulkan/lunarg-vulkan-jammy.list
sudo apt update
sudo apt install vulkan-sdk