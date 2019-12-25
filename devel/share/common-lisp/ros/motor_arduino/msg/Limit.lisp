; Auto-generated. Do not edit!


(cl:in-package motor_arduino-msg)


;//! \htmlinclude Limit.msg.html

(cl:defclass <Limit> (roslisp-msg-protocol:ros-message)
  ((limit_number
    :reader limit_number
    :initarg :limit_number
    :type cl:fixnum
    :initform 0)
   (limit_start
    :reader limit_start
    :initarg :limit_start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Limit (<Limit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Limit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Limit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_arduino-msg:<Limit> is deprecated: use motor_arduino-msg:Limit instead.")))

(cl:ensure-generic-function 'limit_number-val :lambda-list '(m))
(cl:defmethod limit_number-val ((m <Limit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_arduino-msg:limit_number-val is deprecated.  Use motor_arduino-msg:limit_number instead.")
  (limit_number m))

(cl:ensure-generic-function 'limit_start-val :lambda-list '(m))
(cl:defmethod limit_start-val ((m <Limit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_arduino-msg:limit_start-val is deprecated.  Use motor_arduino-msg:limit_start instead.")
  (limit_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Limit>) ostream)
  "Serializes a message object of type '<Limit>"
  (cl:let* ((signed (cl:slot-value msg 'limit_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'limit_start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Limit>) istream)
  "Deserializes a message object of type '<Limit>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'limit_number) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'limit_start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Limit>)))
  "Returns string type for a message object of type '<Limit>"
  "motor_arduino/Limit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Limit)))
  "Returns string type for a message object of type 'Limit"
  "motor_arduino/Limit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Limit>)))
  "Returns md5sum for a message object of type '<Limit>"
  "e1063a34d7b440da198356c0d16d8c89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Limit)))
  "Returns md5sum for a message object of type 'Limit"
  "e1063a34d7b440da198356c0d16d8c89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Limit>)))
  "Returns full string definition for message of type '<Limit>"
  (cl:format cl:nil "int16 limit_number~%bool limit_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Limit)))
  "Returns full string definition for message of type 'Limit"
  (cl:format cl:nil "int16 limit_number~%bool limit_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Limit>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Limit>))
  "Converts a ROS message object to a list"
  (cl:list 'Limit
    (cl:cons ':limit_number (limit_number msg))
    (cl:cons ':limit_start (limit_start msg))
))
