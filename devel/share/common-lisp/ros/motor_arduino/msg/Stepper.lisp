; Auto-generated. Do not edit!


(cl:in-package motor_arduino-msg)


;//! \htmlinclude Stepper.msg.html

(cl:defclass <Stepper> (roslisp-msg-protocol:ros-message)
  ((stepper_number
    :reader stepper_number
    :initarg :stepper_number
    :type cl:fixnum
    :initform 0)
   (stepper_direction
    :reader stepper_direction
    :initarg :stepper_direction
    :type cl:boolean
    :initform cl:nil)
   (stepper_count
    :reader stepper_count
    :initarg :stepper_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Stepper (<Stepper>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stepper>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stepper)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_arduino-msg:<Stepper> is deprecated: use motor_arduino-msg:Stepper instead.")))

(cl:ensure-generic-function 'stepper_number-val :lambda-list '(m))
(cl:defmethod stepper_number-val ((m <Stepper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_arduino-msg:stepper_number-val is deprecated.  Use motor_arduino-msg:stepper_number instead.")
  (stepper_number m))

(cl:ensure-generic-function 'stepper_direction-val :lambda-list '(m))
(cl:defmethod stepper_direction-val ((m <Stepper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_arduino-msg:stepper_direction-val is deprecated.  Use motor_arduino-msg:stepper_direction instead.")
  (stepper_direction m))

(cl:ensure-generic-function 'stepper_count-val :lambda-list '(m))
(cl:defmethod stepper_count-val ((m <Stepper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_arduino-msg:stepper_count-val is deprecated.  Use motor_arduino-msg:stepper_count instead.")
  (stepper_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stepper>) ostream)
  "Serializes a message object of type '<Stepper>"
  (cl:let* ((signed (cl:slot-value msg 'stepper_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stepper_direction) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'stepper_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stepper>) istream)
  "Deserializes a message object of type '<Stepper>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stepper_number) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'stepper_direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stepper_count) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stepper>)))
  "Returns string type for a message object of type '<Stepper>"
  "motor_arduino/Stepper")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stepper)))
  "Returns string type for a message object of type 'Stepper"
  "motor_arduino/Stepper")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stepper>)))
  "Returns md5sum for a message object of type '<Stepper>"
  "418c9f364f01d80c862df03ea60e9515")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stepper)))
  "Returns md5sum for a message object of type 'Stepper"
  "418c9f364f01d80c862df03ea60e9515")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stepper>)))
  "Returns full string definition for message of type '<Stepper>"
  (cl:format cl:nil "int16 stepper_number~%bool stepper_direction~%int16 stepper_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stepper)))
  "Returns full string definition for message of type 'Stepper"
  (cl:format cl:nil "int16 stepper_number~%bool stepper_direction~%int16 stepper_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stepper>))
  (cl:+ 0
     2
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stepper>))
  "Converts a ROS message object to a list"
  (cl:list 'Stepper
    (cl:cons ':stepper_number (stepper_number msg))
    (cl:cons ':stepper_direction (stepper_direction msg))
    (cl:cons ':stepper_count (stepper_count msg))
))
