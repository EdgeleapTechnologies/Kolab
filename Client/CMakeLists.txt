find_package(OpenGL REQUIRED)
find_package(Vulkan)

add_executable(${PROJECT_NAME}-client Client.cpp)
target_include_directories(${PROJECT_NAME}-client
    PUBLIC ${GLFW_INCLUDE_DIRS}
    PUBLIC ${VULKAN_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME}-client glfw)
target_link_libraries(${PROJECT_NAME}-client OpenGL::GL)
target_link_libraries(${PROJECT_NAME}-client Vulkan::Vulkan)
