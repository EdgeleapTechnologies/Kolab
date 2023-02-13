file(GLOB_RECURSE TEST_SOURCES CONFIGURE_DEPENDS 
        ./**.cpp
        ./**.hpp
        ./**.h
        )

add_executable(kolab-tests EXCLUDE_FROM_ALL ${TEST_SOURCES})
target_include_directories(kolab-tests PRIVATE ../ThirdParty/)
target_link_libraries(kolab-tests PRIVATE Catch2::Catch2WithMain)

list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/extras)
include(CTest)
include(Catch)
catch_discover_tests(kolab-tests)

