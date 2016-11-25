
(cl:in-package :asdf)

(defsystem "viconxbee-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "viconPoseMsg" :depends-on ("_package_viconPoseMsg"))
    (:file "_package_viconPoseMsg" :depends-on ("_package"))
  ))