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

# Utility rule file for viconxbee_generate_messages_py.

# Include the progress variables for this target.
include viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/progress.make

viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py: /home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/_viconPoseMsg.py
viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py: /home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/__init__.py


/home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/_viconPoseMsg.py: /opt/ros/kinetic/lib/genpy/genmsg_py.py
/home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/_viconPoseMsg.py: /home/xufang/pathcheck/src/viconxbee/vicon/msg/viconPoseMsg.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xufang/pathcheck/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python from MSG viconxbee/viconPoseMsg"
	cd /home/xufang/pathcheck/build/viconxbee/vicon && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/xufang/pathcheck/src/viconxbee/vicon/msg/viconPoseMsg.msg -Iviconxbee:/home/xufang/pathcheck/src/viconxbee/vicon/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p viconxbee -o /home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg

/home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/__init__.py: /opt/ros/kinetic/lib/genpy/genmsg_py.py
/home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/__init__.py: /home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/_viconPoseMsg.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xufang/pathcheck/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python msg __init__.py for viconxbee"
	cd /home/xufang/pathcheck/build/viconxbee/vicon && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg --initpy

viconxbee_generate_messages_py: viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py
viconxbee_generate_messages_py: /home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/_viconPoseMsg.py
viconxbee_generate_messages_py: /home/xufang/pathcheck/devel/lib/python2.7/dist-packages/viconxbee/msg/__init__.py
viconxbee_generate_messages_py: viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/build.make

.PHONY : viconxbee_generate_messages_py

# Rule to build all files generated by this target.
viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/build: viconxbee_generate_messages_py

.PHONY : viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/build

viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/clean:
	cd /home/xufang/pathcheck/build/viconxbee/vicon && $(CMAKE_COMMAND) -P CMakeFiles/viconxbee_generate_messages_py.dir/cmake_clean.cmake
.PHONY : viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/clean

viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/depend:
	cd /home/xufang/pathcheck/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xufang/pathcheck/src /home/xufang/pathcheck/src/viconxbee/vicon /home/xufang/pathcheck/build /home/xufang/pathcheck/build/viconxbee/vicon /home/xufang/pathcheck/build/viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : viconxbee/vicon/CMakeFiles/viconxbee_generate_messages_py.dir/depend
