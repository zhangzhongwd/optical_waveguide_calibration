# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "motor_arduino: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imotor_arduino:/home/zhong/Sensor/src/motor_arduino/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(motor_arduino_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg" NAME_WE)
add_custom_target(_motor_arduino_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motor_arduino" "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg" ""
)

get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg" NAME_WE)
add_custom_target(_motor_arduino_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motor_arduino" "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_arduino
)
_generate_msg_cpp(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_arduino
)

### Generating Services

### Generating Module File
_generate_module_cpp(motor_arduino
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_arduino
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(motor_arduino_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(motor_arduino_generate_messages motor_arduino_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_cpp _motor_arduino_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_cpp _motor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_arduino_gencpp)
add_dependencies(motor_arduino_gencpp motor_arduino_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_arduino_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_arduino
)
_generate_msg_eus(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_arduino
)

### Generating Services

### Generating Module File
_generate_module_eus(motor_arduino
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_arduino
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(motor_arduino_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(motor_arduino_generate_messages motor_arduino_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_eus _motor_arduino_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_eus _motor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_arduino_geneus)
add_dependencies(motor_arduino_geneus motor_arduino_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_arduino_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_arduino
)
_generate_msg_lisp(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_arduino
)

### Generating Services

### Generating Module File
_generate_module_lisp(motor_arduino
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_arduino
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(motor_arduino_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(motor_arduino_generate_messages motor_arduino_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_lisp _motor_arduino_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_lisp _motor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_arduino_genlisp)
add_dependencies(motor_arduino_genlisp motor_arduino_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_arduino_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_arduino
)
_generate_msg_nodejs(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_arduino
)

### Generating Services

### Generating Module File
_generate_module_nodejs(motor_arduino
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_arduino
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(motor_arduino_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(motor_arduino_generate_messages motor_arduino_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_nodejs _motor_arduino_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_nodejs _motor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_arduino_gennodejs)
add_dependencies(motor_arduino_gennodejs motor_arduino_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_arduino_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_arduino
)
_generate_msg_py(motor_arduino
  "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_arduino
)

### Generating Services

### Generating Module File
_generate_module_py(motor_arduino
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_arduino
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(motor_arduino_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(motor_arduino_generate_messages motor_arduino_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Stepper.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_py _motor_arduino_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhong/Sensor/src/motor_arduino/msg/Limit.msg" NAME_WE)
add_dependencies(motor_arduino_generate_messages_py _motor_arduino_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motor_arduino_genpy)
add_dependencies(motor_arduino_genpy motor_arduino_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motor_arduino_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motor_arduino
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(motor_arduino_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motor_arduino
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(motor_arduino_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motor_arduino
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(motor_arduino_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_arduino)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motor_arduino
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(motor_arduino_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_arduino)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_arduino\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motor_arduino
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(motor_arduino_generate_messages_py std_msgs_generate_messages_py)
endif()
