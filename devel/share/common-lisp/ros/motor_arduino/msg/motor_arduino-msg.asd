
(cl:in-package :asdf)

(defsystem "motor_arduino-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Limit" :depends-on ("_package_Limit"))
    (:file "_package_Limit" :depends-on ("_package"))
    (:file "Stepper" :depends-on ("_package_Stepper"))
    (:file "_package_Stepper" :depends-on ("_package"))
  ))