
(cl:in-package :asdf)

(defsystem "uwb_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "UwbData" :depends-on ("_package_UwbData"))
    (:file "_package_UwbData" :depends-on ("_package"))
    (:file "UwbRange" :depends-on ("_package_UwbRange"))
    (:file "_package_UwbRange" :depends-on ("_package"))
  ))