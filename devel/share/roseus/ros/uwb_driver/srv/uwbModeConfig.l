;; Auto-generated. Do not edit!


(when (boundp 'uwb_driver::uwbModeConfig)
  (if (not (find-package "UWB_DRIVER"))
    (make-package "UWB_DRIVER"))
  (shadow 'uwbModeConfig (find-package "UWB_DRIVER")))
(unless (find-package "UWB_DRIVER::UWBMODECONFIG")
  (make-package "UWB_DRIVER::UWBMODECONFIG"))
(unless (find-package "UWB_DRIVER::UWBMODECONFIGREQUEST")
  (make-package "UWB_DRIVER::UWBMODECONFIGREQUEST"))
(unless (find-package "UWB_DRIVER::UWBMODECONFIGRESPONSE")
  (make-package "UWB_DRIVER::UWBMODECONFIGRESPONSE"))

(in-package "ROS")





(defclass uwb_driver::uwbModeConfigRequest
  :super ros::object
  :slots (_p4xxmode ))

(defmethod uwb_driver::uwbModeConfigRequest
  (:init
   (&key
    ((:p4xxmode __p4xxmode) 0)
    )
   (send-super :init)
   (setq _p4xxmode (round __p4xxmode))
   self)
  (:p4xxmode
   (&optional __p4xxmode)
   (if __p4xxmode (setq _p4xxmode __p4xxmode)) _p4xxmode)
  (:serialization-length
   ()
   (+
    ;; uint8 _p4xxmode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _p4xxmode
       (write-byte _p4xxmode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _p4xxmode
     (setq _p4xxmode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass uwb_driver::uwbModeConfigResponse
  :super ros::object
  :slots (_result ))

(defmethod uwb_driver::uwbModeConfigResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass uwb_driver::uwbModeConfig
  :super ros::object
  :slots ())

(setf (get uwb_driver::uwbModeConfig :md5sum-) "ee0225d8527cf21f50a2678605fa6de2")
(setf (get uwb_driver::uwbModeConfig :datatype-) "uwb_driver/uwbModeConfig")
(setf (get uwb_driver::uwbModeConfig :request) uwb_driver::uwbModeConfigRequest)
(setf (get uwb_driver::uwbModeConfig :response) uwb_driver::uwbModeConfigResponse)

(defmethod uwb_driver::uwbModeConfigRequest
  (:response () (instance uwb_driver::uwbModeConfigResponse :init)))

(setf (get uwb_driver::uwbModeConfigRequest :md5sum-) "ee0225d8527cf21f50a2678605fa6de2")
(setf (get uwb_driver::uwbModeConfigRequest :datatype-) "uwb_driver/uwbModeConfigRequest")
(setf (get uwb_driver::uwbModeConfigRequest :definition-)
      "uint8 p4xxmode
---
uint8 result

")

(setf (get uwb_driver::uwbModeConfigResponse :md5sum-) "ee0225d8527cf21f50a2678605fa6de2")
(setf (get uwb_driver::uwbModeConfigResponse :datatype-) "uwb_driver/uwbModeConfigResponse")
(setf (get uwb_driver::uwbModeConfigResponse :definition-)
      "uint8 p4xxmode
---
uint8 result

")



(provide :uwb_driver/uwbModeConfig "ee0225d8527cf21f50a2678605fa6de2")


