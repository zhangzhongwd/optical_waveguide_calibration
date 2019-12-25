;; Auto-generated. Do not edit!


(when (boundp 'motor_arduino::Stepper)
  (if (not (find-package "MOTOR_ARDUINO"))
    (make-package "MOTOR_ARDUINO"))
  (shadow 'Stepper (find-package "MOTOR_ARDUINO")))
(unless (find-package "MOTOR_ARDUINO::STEPPER")
  (make-package "MOTOR_ARDUINO::STEPPER"))

(in-package "ROS")
;;//! \htmlinclude Stepper.msg.html


(defclass motor_arduino::Stepper
  :super ros::object
  :slots (_stepper_number _stepper_direction _stepper_count ))

(defmethod motor_arduino::Stepper
  (:init
   (&key
    ((:stepper_number __stepper_number) 0)
    ((:stepper_direction __stepper_direction) nil)
    ((:stepper_count __stepper_count) 0)
    )
   (send-super :init)
   (setq _stepper_number (round __stepper_number))
   (setq _stepper_direction __stepper_direction)
   (setq _stepper_count (round __stepper_count))
   self)
  (:stepper_number
   (&optional __stepper_number)
   (if __stepper_number (setq _stepper_number __stepper_number)) _stepper_number)
  (:stepper_direction
   (&optional __stepper_direction)
   (if __stepper_direction (setq _stepper_direction __stepper_direction)) _stepper_direction)
  (:stepper_count
   (&optional __stepper_count)
   (if __stepper_count (setq _stepper_count __stepper_count)) _stepper_count)
  (:serialization-length
   ()
   (+
    ;; int16 _stepper_number
    2
    ;; bool _stepper_direction
    1
    ;; int16 _stepper_count
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _stepper_number
       (write-word _stepper_number s)
     ;; bool _stepper_direction
       (if _stepper_direction (write-byte -1 s) (write-byte 0 s))
     ;; int16 _stepper_count
       (write-word _stepper_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _stepper_number
     (setq _stepper_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _stepper_direction
     (setq _stepper_direction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _stepper_count
     (setq _stepper_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get motor_arduino::Stepper :md5sum-) "418c9f364f01d80c862df03ea60e9515")
(setf (get motor_arduino::Stepper :datatype-) "motor_arduino/Stepper")
(setf (get motor_arduino::Stepper :definition-)
      "int16 stepper_number
bool stepper_direction
int16 stepper_count

")



(provide :motor_arduino/Stepper "418c9f364f01d80c862df03ea60e9515")


