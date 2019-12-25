;; Auto-generated. Do not edit!


(when (boundp 'sensor_arduino::WriteVoltage)
  (if (not (find-package "SENSOR_ARDUINO"))
    (make-package "SENSOR_ARDUINO"))
  (shadow 'WriteVoltage (find-package "SENSOR_ARDUINO")))
(unless (find-package "SENSOR_ARDUINO::WRITEVOLTAGE")
  (make-package "SENSOR_ARDUINO::WRITEVOLTAGE"))

(in-package "ROS")
;;//! \htmlinclude WriteVoltage.msg.html


(defclass sensor_arduino::WriteVoltage
  :super ros::object
  :slots (_voltage ))

(defmethod sensor_arduino::WriteVoltage
  (:init
   (&key
    ((:voltage __voltage) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _voltage __voltage)
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; int16[] _voltage
    (* 2    (length _voltage)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _voltage
     (write-long (length _voltage) s)
     (dotimes (i (length _voltage))
       (write-word (elt _voltage i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _voltage i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get sensor_arduino::WriteVoltage :md5sum-) "8343d456b6f735c9321e0caae0e82981")
(setf (get sensor_arduino::WriteVoltage :datatype-) "sensor_arduino/WriteVoltage")
(setf (get sensor_arduino::WriteVoltage :definition-)
      "int16[] voltage

")



(provide :sensor_arduino/WriteVoltage "8343d456b6f735c9321e0caae0e82981")


