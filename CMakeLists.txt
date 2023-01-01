cmake_minimum_required(VERSION 3.14)

project(Kolab LANGUAGES C CXX)

set (CMAKE_CXX_STANDARD 17)

#include third party libs and configure theirs builds as needed
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory(ThirdParty/GLFW/)

#include our code, usually the configuration of these modules is done in their own cmakelists file
add_subdirectory(Client)
