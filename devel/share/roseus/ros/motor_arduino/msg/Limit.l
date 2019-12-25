;; Auto-generated. Do not edit!


(when (boundp 'motor_arduino::Limit)
  (if (not (find-package "MOTOR_ARDUINO"))
    (make-package "MOTOR_ARDUINO"))
  (shadow 'Limit (find-package "MOTOR_ARDUINO")))
(unless (find-package "MOTOR_ARDUINO::LIMIT")
  (make-package "MOTOR_ARDUINO::LIMIT"))

(in-package "ROS")
;;//! \htmlinclude Limit.msg.html


(defclass motor_arduino::Limit
  :super ros::object
  :slots (_limit_number _limit_start ))

(defmethod motor_arduino::Limit
  (:init
   (&key
    ((:limit_number __limit_number) 0)
    ((:limit_start __limit_start) nil)
    )
   (send-super :init)
   (setq _limit_number (round __limit_number))
   (setq _limit_start __limit_start)
   self)
  (:limit_number
   (&optional __limit_number)
   (if __limit_number (setq _limit_number __limit_number)) _limit_number)
  (:limit_start
   (&optional __limit_start)
   (if __limit_start (setq _limit_start __limit_start)) _limit_start)
  (:serialization-length
   ()
   (+
    ;; int16 _limit_number
    2
    ;; bool _limit_start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _limit_number
       (write-word _limit_number s)
     ;; bool _limit_start
       (if _limit_start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _limit_number
     (setq _limit_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _limit_start
     (setq _limit_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get motor_arduino::Limit :md5sum-) "e1063a34d7b440da198356c0d16d8c89")
(setf (get motor_arduino::Limit :datatype-) "motor_arduino/Limit")
(setf (get motor_arduino::Limit :definition-)
      "int16 limit_number
bool limit_start

")



(provide :motor_arduino/Limit "e1063a34d7b440da198356c0d16d8c89")


