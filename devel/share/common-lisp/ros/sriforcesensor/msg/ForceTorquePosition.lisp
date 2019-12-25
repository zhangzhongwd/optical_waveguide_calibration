; Auto-generated. Do not edit!


(cl:in-package sriforcesensor-msg)


;//! \htmlinclude ForceTorquePosition.msg.html

(cl:defclass <ForceTorquePosition> (roslisp-msg-protocol:ros-message)
  ((Forcevalue
    :reader Forcevalue
    :initarg :Forcevalue
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (Radius
    :reader Radius
    :initarg :Radius
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass ForceTorquePosition (<ForceTorquePosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceTorquePosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceTorquePosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sriforcesensor-msg:<ForceTorquePosition> is deprecated: use sriforcesensor-msg:ForceTorquePosition instead.")))

(cl:ensure-generic-function 'Forcevalue-val :lambda-list '(m))
(cl:defmethod Forcevalue-val ((m <ForceTorquePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sriforcesensor-msg:Forcevalue-val is deprecated.  Use sriforcesensor-msg:Forcevalue instead.")
  (Forcevalue m))

(cl:ensure-generic-function 'Radius-val :lambda-list '(m))
(cl:defmethod Radius-val ((m <ForceTorquePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sriforcesensor-msg:Radius-val is deprecated.  Use sriforcesensor-msg:Radius instead.")
  (Radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceTorquePosition>) ostream)
  "Serializes a message object of type '<ForceTorquePosition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Forcevalue) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Radius) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceTorquePosition>) istream)
  "Deserializes a message object of type '<ForceTorquePosition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Forcevalue) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Radius) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceTorquePosition>)))
  "Returns string type for a message object of type '<ForceTorquePosition>"
  "sriforcesensor/ForceTorquePosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorquePosition)))
  "Returns string type for a message object of type 'ForceTorquePosition"
  "sriforcesensor/ForceTorquePosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceTorquePosition>)))
  "Returns md5sum for a message object of type '<ForceTorquePosition>"
  "b109b108f2bbaf48766fe7d3d50d6ee5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceTorquePosition)))
  "Returns md5sum for a message object of type 'ForceTorquePosition"
  "b109b108f2bbaf48766fe7d3d50d6ee5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceTorquePosition>)))
  "Returns full string definition for message of type '<ForceTorquePosition>"
  (cl:format cl:nil "geometry_msgs/Twist Forcevalue~%std_msgs/Float64MultiArray Radius~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceTorquePosition)))
  "Returns full string definition for message of type 'ForceTorquePosition"
  (cl:format cl:nil "geometry_msgs/Twist Forcevalue~%std_msgs/Float64MultiArray Radius~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceTorquePosition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Forcevalue))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Radius))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceTorquePosition>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceTorquePosition
    (cl:cons ':Forcevalue (Forcevalue msg))
    (cl:cons ':Radius (Radius msg))
))
