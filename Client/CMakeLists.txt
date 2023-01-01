find_package(OpenGL REQUIRED)
find_package(Vulkan)

file(GLOB_RECURSE CLIENT_SOURCES CONFIGURE_DEPENDS 
        **.cpp
        **.hpp
        **.h
        )

add_executable(${PROJECT_NAME}-client ${CLIENT_SOURCES} ${COMMON_SOURCES})
target_include_directories(${PROJECT_NAME}-client
    PUBLIC ${GLFW_INCLUDE_DIRS}
    PUBLIC ${VULKAN_INCLUDE_DIRS}
    PRIVATE ../Common)
target_link_libraries(${PROJECT_NAME}-client glfw)
target_link_libraries(${PROJECT_NAME}-client OpenGL::GL)
target_link_libraries(${PROJECT_NAME}-client Vulkan::Vulkan)
