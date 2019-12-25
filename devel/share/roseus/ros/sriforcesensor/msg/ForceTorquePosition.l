;; Auto-generated. Do not edit!


(when (boundp 'sriforcesensor::ForceTorquePosition)
  (if (not (find-package "SRIFORCESENSOR"))
    (make-package "SRIFORCESENSOR"))
  (shadow 'ForceTorquePosition (find-package "SRIFORCESENSOR")))
(unless (find-package "SRIFORCESENSOR::FORCETORQUEPOSITION")
  (make-package "SRIFORCESENSOR::FORCETORQUEPOSITION"))

(in-package "ROS")
;;//! \htmlinclude ForceTorquePosition.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sriforcesensor::ForceTorquePosition
  :super ros::object
  :slots (_Forcevalue _Radius ))

(defmethod sriforcesensor::ForceTorquePosition
  (:init
   (&key
    ((:Forcevalue __Forcevalue) (instance geometry_msgs::Twist :init))
    ((:Radius __Radius) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _Forcevalue __Forcevalue)
   (setq _Radius __Radius)
   self)
  (:Forcevalue
   (&rest __Forcevalue)
   (if (keywordp (car __Forcevalue))
       (send* _Forcevalue __Forcevalue)
     (progn
       (if __Forcevalue (setq _Forcevalue (car __Forcevalue)))
       _Forcevalue)))
  (:Radius
   (&rest __Radius)
   (if (keywordp (car __Radius))
       (send* _Radius __Radius)
     (progn
       (if __Radius (setq _Radius (car __Radius)))
       _Radius)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _Forcevalue
    (send _Forcevalue :serialization-length)
    ;; std_msgs/Float64MultiArray _Radius
    (send _Radius :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _Forcevalue
       (send _Forcevalue :serialize s)
     ;; std_msgs/Float64MultiArray _Radius
       (send _Radius :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _Forcevalue
     (send _Forcevalue :deserialize buf ptr-) (incf ptr- (send _Forcevalue :serialization-length))
   ;; std_msgs/Float64MultiArray _Radius
     (send _Radius :deserialize buf ptr-) (incf ptr- (send _Radius :serialization-length))
   ;;
   self)
  )

(setf (get sriforcesensor::ForceTorquePosition :md5sum-) "b109b108f2bbaf48766fe7d3d50d6ee5")
(setf (get sriforcesensor::ForceTorquePosition :datatype-) "sriforcesensor/ForceTorquePosition")
(setf (get sriforcesensor::ForceTorquePosition :definition-)
      "geometry_msgs/Twist Forcevalue
std_msgs/Float64MultiArray Radius

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :sriforcesensor/ForceTorquePosition "b109b108f2bbaf48766fe7d3d50d6ee5")


