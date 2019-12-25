; Auto-generated. Do not edit!


(cl:in-package sensor_arduino-msg)


;//! \htmlinclude WriteVoltage.msg.html

(cl:defclass <WriteVoltage> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass WriteVoltage (<WriteVoltage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteVoltage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteVoltage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_arduino-msg:<WriteVoltage> is deprecated: use sensor_arduino-msg:WriteVoltage instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <WriteVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_arduino-msg:voltage-val is deprecated.  Use sensor_arduino-msg:voltage instead.")
  (voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteVoltage>) ostream)
  "Serializes a message object of type '<WriteVoltage>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'voltage))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteVoltage>) istream)
  "Deserializes a message object of type '<WriteVoltage>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'voltage) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'voltage)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteVoltage>)))
  "Returns string type for a message object of type '<WriteVoltage>"
  "sensor_arduino/WriteVoltage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteVoltage)))
  "Returns string type for a message object of type 'WriteVoltage"
  "sensor_arduino/WriteVoltage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteVoltage>)))
  "Returns md5sum for a message object of type '<WriteVoltage>"
  "8343d456b6f735c9321e0caae0e82981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteVoltage)))
  "Returns md5sum for a message object of type 'WriteVoltage"
  "8343d456b6f735c9321e0caae0e82981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteVoltage>)))
  "Returns full string definition for message of type '<WriteVoltage>"
  (cl:format cl:nil "int16[] voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteVoltage)))
  "Returns full string definition for message of type 'WriteVoltage"
  (cl:format cl:nil "int16[] voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteVoltage>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteVoltage>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteVoltage
    (cl:cons ':voltage (voltage msg))
))
