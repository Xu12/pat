# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xufang/pathcheck/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xufang/pathcheck/build

# Utility rule file for _run_tests_serial_gtest_serial-test.

# Include the progress variables for this target.
include viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/progress.make

viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test:
	cd /home/xufang/pathcheck/build/viconxbee/serial/tests && ../../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/run_tests.py /home/xufang/pathcheck/build/test_results/serial/gtest-serial-test.xml /home/xufang/pathcheck/devel/lib/serial/serial-test\ --gtest_output=xml:/home/xufang/pathcheck/build/test_results/serial/gtest-serial-test.xml

_run_tests_serial_gtest_serial-test: viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test
_run_tests_serial_gtest_serial-test: viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/build.make

.PHONY : _run_tests_serial_gtest_serial-test

# Rule to build all files generated by this target.
viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/build: _run_tests_serial_gtest_serial-test

.PHONY : viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/build

viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/clean:
	cd /home/xufang/pathcheck/build/viconxbee/serial/tests && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_serial_gtest_serial-test.dir/cmake_clean.cmake
.PHONY : viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/clean

viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/depend:
	cd /home/xufang/pathcheck/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xufang/pathcheck/src /home/xufang/pathcheck/src/viconxbee/serial/tests /home/xufang/pathcheck/build /home/xufang/pathcheck/build/viconxbee/serial/tests /home/xufang/pathcheck/build/viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : viconxbee/serial/tests/CMakeFiles/_run_tests_serial_gtest_serial-test.dir/depend
