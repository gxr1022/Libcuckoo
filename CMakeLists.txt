cmake_minimum_required(VERSION 3.10.0)
project(LibCuckoo CXX)
set(CMAKE_CXX_STANDARD 17)


include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${GFLAGS_INCLUDE_DIRS}
)

set(SOURCES src/libcuckoo_client.cpp)

find_package(gflags REQUIRED)

add_executable(libcuckoo ${SOURCES})

target_link_libraries(libcuckoo ${GFLAGS_LIBRARIES})


