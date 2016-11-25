
(cl:in-package :asdf)

(defsystem "localization-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "UwbData" :depends-on ("_package_UwbData"))
    (:file "_package_UwbData" :depends-on ("_package"))
  ))