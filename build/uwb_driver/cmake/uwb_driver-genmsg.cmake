# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "uwb_driver: 2 messages, 2 services")

set(MSG_I_FLAGS "-Iuwb_driver:/home/xufang/pathcheck/src/uwb_driver/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(uwb_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg" NAME_WE)
add_custom_target(_uwb_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uwb_driver" "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv" NAME_WE)
add_custom_target(_uwb_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uwb_driver" "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv" ""
)

get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg" NAME_WE)
add_custom_target(_uwb_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uwb_driver" "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv" NAME_WE)
add_custom_target(_uwb_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uwb_driver" "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uwb_driver
)
_generate_msg_cpp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uwb_driver
)

### Generating Services
_generate_srv_cpp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uwb_driver
)
_generate_srv_cpp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uwb_driver
)

### Generating Module File
_generate_module_cpp(uwb_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uwb_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(uwb_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(uwb_driver_generate_messages uwb_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_cpp _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_cpp _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_cpp _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_cpp _uwb_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uwb_driver_gencpp)
add_dependencies(uwb_driver_gencpp uwb_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uwb_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uwb_driver
)
_generate_msg_eus(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uwb_driver
)

### Generating Services
_generate_srv_eus(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uwb_driver
)
_generate_srv_eus(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uwb_driver
)

### Generating Module File
_generate_module_eus(uwb_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uwb_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(uwb_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(uwb_driver_generate_messages uwb_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_eus _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_eus _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_eus _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_eus _uwb_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uwb_driver_geneus)
add_dependencies(uwb_driver_geneus uwb_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uwb_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uwb_driver
)
_generate_msg_lisp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uwb_driver
)

### Generating Services
_generate_srv_lisp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uwb_driver
)
_generate_srv_lisp(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uwb_driver
)

### Generating Module File
_generate_module_lisp(uwb_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uwb_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(uwb_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(uwb_driver_generate_messages uwb_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_lisp _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_lisp _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_lisp _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_lisp _uwb_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uwb_driver_genlisp)
add_dependencies(uwb_driver_genlisp uwb_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uwb_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uwb_driver
)
_generate_msg_nodejs(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uwb_driver
)

### Generating Services
_generate_srv_nodejs(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uwb_driver
)
_generate_srv_nodejs(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uwb_driver
)

### Generating Module File
_generate_module_nodejs(uwb_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uwb_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(uwb_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(uwb_driver_generate_messages uwb_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_nodejs _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_nodejs _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_nodejs _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_nodejs _uwb_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uwb_driver_gennodejs)
add_dependencies(uwb_driver_gennodejs uwb_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uwb_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver
)
_generate_msg_py(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver
)

### Generating Services
_generate_srv_py(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver
)
_generate_srv_py(uwb_driver
  "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver
)

### Generating Module File
_generate_module_py(uwb_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(uwb_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(uwb_driver_generate_messages uwb_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbData.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_py _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbRangeComm.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_py _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/msg/UwbRange.msg" NAME_WE)
add_dependencies(uwb_driver_generate_messages_py _uwb_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xufang/pathcheck/src/uwb_driver/srv/uwbModeConfig.srv" NAME_WE)
add_dependencies(uwb_driver_generate_messages_py _uwb_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uwb_driver_genpy)
add_dependencies(uwb_driver_genpy uwb_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uwb_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uwb_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uwb_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(uwb_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(uwb_driver_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uwb_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uwb_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(uwb_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(uwb_driver_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uwb_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uwb_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(uwb_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(uwb_driver_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uwb_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uwb_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(uwb_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(uwb_driver_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uwb_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(uwb_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(uwb_driver_generate_messages_py geometry_msgs_generate_messages_py)
endif()
