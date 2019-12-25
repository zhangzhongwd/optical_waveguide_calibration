# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensor_arduino: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isensor_arduino:/home/zhong/Sensor/src/sensor_arduino/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensor_arduino_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg" NAME_WE)
add_custom_target(_sensor_arduino_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_arduino" "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensor_arduino
  "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_arduino
)

### Generating Services

### Generating Module File
_generate_module_cpp(sensor_arduino
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_arduino
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensor_arduino_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensor_arduino_generate_messages sensor_arduino_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg" NAME_WE)
add_dependencies(sensor_arduino_generate_messages_cpp _sensor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_arduino_gencpp)
add_dependencies(sensor_arduino_gencpp sensor_arduino_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_arduino_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sensor_arduino
  "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_arduino
)

### Generating Services

### Generating Module File
_generate_module_eus(sensor_arduino
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_arduino
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sensor_arduino_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sensor_arduino_generate_messages sensor_arduino_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg" NAME_WE)
add_dependencies(sensor_arduino_generate_messages_eus _sensor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_arduino_geneus)
add_dependencies(sensor_arduino_geneus sensor_arduino_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_arduino_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensor_arduino
  "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_arduino
)

### Generating Services

### Generating Module File
_generate_module_lisp(sensor_arduino
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_arduino
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensor_arduino_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensor_arduino_generate_messages sensor_arduino_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg" NAME_WE)
add_dependencies(sensor_arduino_generate_messages_lisp _sensor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_arduino_genlisp)
add_dependencies(sensor_arduino_genlisp sensor_arduino_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_arduino_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sensor_arduino
  "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_arduino
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sensor_arduino
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_arduino
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sensor_arduino_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sensor_arduino_generate_messages sensor_arduino_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg" NAME_WE)
add_dependencies(sensor_arduino_generate_messages_nodejs _sensor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_arduino_gennodejs)
add_dependencies(sensor_arduino_gennodejs sensor_arduino_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_arduino_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensor_arduino
  "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_arduino
)

### Generating Services

### Generating Module File
_generate_module_py(sensor_arduino
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_arduino
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensor_arduino_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensor_arduino_generate_messages sensor_arduino_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sensor_arduino/msg/WriteVoltage.msg" NAME_WE)
add_dependencies(sensor_arduino_generate_messages_py _sensor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_arduino_genpy)
add_dependencies(sensor_arduino_genpy sensor_arduino_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_arduino_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_arduino
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sensor_arduino_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_arduino
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sensor_arduino_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_arduino
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sensor_arduino_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_arduino
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sensor_arduino_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_arduino)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_arduino\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_arduino
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sensor_arduino_generate_messages_py std_msgs_generate_messages_py)
endif()
