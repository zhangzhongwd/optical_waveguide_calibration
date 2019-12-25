
(cl:in-package :asdf)

(defsystem "sriforcesensor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ForceTorquePosition" :depends-on ("_package_ForceTorquePosition"))
    (:file "_package_ForceTorquePosition" :depends-on ("_package"))
  ))