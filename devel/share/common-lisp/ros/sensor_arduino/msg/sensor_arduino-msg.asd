
(cl:in-package :asdf)

(defsystem "sensor_arduino-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WriteVoltage" :depends-on ("_package_WriteVoltage"))
    (:file "_package_WriteVoltage" :depends-on ("_package"))
  ))