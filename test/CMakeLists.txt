file(GLOB_RECURSE TEST_SOURCES CONFIGURE_DEPENDS 
        ./**.cpp
        ./**.hpp
        ./**.h
        )

add_executable(kolab_tests ${TEST_SOURCES})
target_include_directories(kolab_tests PRIVATE ../ThirdParty/) 
target_link_libraries(kolab_tests PRIVATE Catch2::Catch2WithMain)

list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/extras)
include(CTest)
include(Catch)
catch_discover_tests(kolab_tests)

