# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sriforcesensor: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isriforcesensor:/home/zhong/Sensor/src/sriforcesensor/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sriforcesensor_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg" NAME_WE)
add_custom_target(_sriforcesensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sriforcesensor" "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg" "std_msgs/MultiArrayDimension:geometry_msgs/Twist:std_msgs/MultiArrayLayout:geometry_msgs/Vector3:std_msgs/Float64MultiArray"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sriforcesensor
  "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sriforcesensor
)

### Generating Services

### Generating Module File
_generate_module_cpp(sriforcesensor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sriforcesensor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sriforcesensor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sriforcesensor_generate_messages sriforcesensor_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg" NAME_WE)
add_dependencies(sriforcesensor_generate_messages_cpp _sriforcesensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sriforcesensor_gencpp)
add_dependencies(sriforcesensor_gencpp sriforcesensor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sriforcesensor_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sriforcesensor
  "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sriforcesensor
)

### Generating Services

### Generating Module File
_generate_module_eus(sriforcesensor
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sriforcesensor
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sriforcesensor_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sriforcesensor_generate_messages sriforcesensor_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg" NAME_WE)
add_dependencies(sriforcesensor_generate_messages_eus _sriforcesensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sriforcesensor_geneus)
add_dependencies(sriforcesensor_geneus sriforcesensor_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sriforcesensor_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sriforcesensor
  "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sriforcesensor
)

### Generating Services

### Generating Module File
_generate_module_lisp(sriforcesensor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sriforcesensor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sriforcesensor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sriforcesensor_generate_messages sriforcesensor_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg" NAME_WE)
add_dependencies(sriforcesensor_generate_messages_lisp _sriforcesensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sriforcesensor_genlisp)
add_dependencies(sriforcesensor_genlisp sriforcesensor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sriforcesensor_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sriforcesensor
  "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sriforcesensor
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sriforcesensor
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sriforcesensor
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sriforcesensor_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sriforcesensor_generate_messages sriforcesensor_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg" NAME_WE)
add_dependencies(sriforcesensor_generate_messages_nodejs _sriforcesensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sriforcesensor_gennodejs)
add_dependencies(sriforcesensor_gennodejs sriforcesensor_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sriforcesensor_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sriforcesensor
  "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sriforcesensor
)

### Generating Services

### Generating Module File
_generate_module_py(sriforcesensor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sriforcesensor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sriforcesensor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sriforcesensor_generate_messages sriforcesensor_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhong/Sensor/src/sriforcesensor/msg/ForceTorquePosition.msg" NAME_WE)
add_dependencies(sriforcesensor_generate_messages_py _sriforcesensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sriforcesensor_genpy)
add_dependencies(sriforcesensor_genpy sriforcesensor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sriforcesensor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sriforcesensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sriforcesensor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sriforcesensor_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sriforcesensor_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sriforcesensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sriforcesensor
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sriforcesensor_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sriforcesensor_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sriforcesensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sriforcesensor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sriforcesensor_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sriforcesensor_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sriforcesensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sriforcesensor
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sriforcesensor_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sriforcesensor_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sriforcesensor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sriforcesensor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sriforcesensor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sriforcesensor_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sriforcesensor_generate_messages_py geometry_msgs_generate_messages_py)
endif()
