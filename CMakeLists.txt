# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.13.1)

if( WIN32 ) # true if windows (32 and 64 bit)
set(GNUARMEMB_TOOLCHAIN_PATH "$ENV{GCC_ARM_HOME}")
endif()

set(ZEPHYR_TOOLCHAIN_VARIANT gnuarmemb)

list(APPEND BOARD_ROOT ${CMAKE_CURRENT_SOURCE_DIR})

message("----------------------------------------------------------------")
message("${BOARD_ROOT}")
message("${GNUARMEMB_TOOLCHAIN_PATH}")

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})


project(blinky)

target_sources(app PRIVATE src/main.c)
