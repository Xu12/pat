;; Auto-generated. Do not edit!


(when (boundp 'uwb_driver::uwbRangeComm)
  (if (not (find-package "UWB_DRIVER"))
    (make-package "UWB_DRIVER"))
  (shadow 'uwbRangeComm (find-package "UWB_DRIVER")))
(unless (find-package "UWB_DRIVER::UWBRANGECOMM")
  (make-package "UWB_DRIVER::UWBRANGECOMM"))
(unless (find-package "UWB_DRIVER::UWBRANGECOMMREQUEST")
  (make-package "UWB_DRIVER::UWBRANGECOMMREQUEST"))
(unless (find-package "UWB_DRIVER::UWBRANGECOMMRESPONSE")
  (make-package "UWB_DRIVER::UWBRANGECOMMRESPONSE"))

(in-package "ROS")





(defclass uwb_driver::uwbRangeCommRequest
  :super ros::object
  :slots (_action _responder _antenna _channel _data_size _data ))

(defmethod uwb_driver::uwbRangeCommRequest
  (:init
   (&key
    ((:action __action) 0)
    ((:responder __responder) 0)
    ((:antenna __antenna) 0)
    ((:channel __channel) 0)
    ((:data_size __data_size) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _responder (round __responder))
   (setq _antenna (round __antenna))
   (setq _channel (round __channel))
   (setq _data_size (round __data_size))
   (setq _data __data)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:responder
   (&optional __responder)
   (if __responder (setq _responder __responder)) _responder)
  (:antenna
   (&optional __antenna)
   (if __antenna (setq _antenna __antenna)) _antenna)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:data_size
   (&optional __data_size)
   (if __data_size (setq _data_size __data_size)) _data_size)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _action
    1
    ;; uint8 _responder
    1
    ;; uint8 _antenna
    1
    ;; uint8 _channel
    1
    ;; uint16 _data_size
    2
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;; uint8 _responder
       (write-byte _responder s)
     ;; uint8 _antenna
       (write-byte _antenna s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint16 _data_size
       (write-word _data_size s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _responder
     (setq _responder (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _antenna
     (setq _antenna (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _data_size
     (setq _data_size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass uwb_driver::uwbRangeCommResponse
  :super ros::object
  :slots (_result ))

(defmethod uwb_driver::uwbRangeCommResponse
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

(defclass uwb_driver::uwbRangeComm
  :super ros::object
  :slots ())

(setf (get uwb_driver::uwbRangeComm :md5sum-) "112b5681119ecc68ece4e0e294e8f5cf")
(setf (get uwb_driver::uwbRangeComm :datatype-) "uwb_driver/uwbRangeComm")
(setf (get uwb_driver::uwbRangeComm :request) uwb_driver::uwbRangeCommRequest)
(setf (get uwb_driver::uwbRangeComm :response) uwb_driver::uwbRangeCommResponse)

(defmethod uwb_driver::uwbRangeCommRequest
  (:response () (instance uwb_driver::uwbRangeCommResponse :init)))

(setf (get uwb_driver::uwbRangeCommRequest :md5sum-) "112b5681119ecc68ece4e0e294e8f5cf")
(setf (get uwb_driver::uwbRangeCommRequest :datatype-) "uwb_driver/uwbRangeCommRequest")
(setf (get uwb_driver::uwbRangeCommRequest :definition-)
      "uint8 action





uint8 responder
uint8 antenna
uint8 channel
uint16 data_size
uint8[] data
---
uint8 result

")

(setf (get uwb_driver::uwbRangeCommResponse :md5sum-) "112b5681119ecc68ece4e0e294e8f5cf")
(setf (get uwb_driver::uwbRangeCommResponse :datatype-) "uwb_driver/uwbRangeCommResponse")
(setf (get uwb_driver::uwbRangeCommResponse :definition-)
      "uint8 action





uint8 responder
uint8 antenna
uint8 channel
uint16 data_size
uint8[] data
---
uint8 result

")



(provide :uwb_driver/uwbRangeComm "112b5681119ecc68ece4e0e294e8f5cf")


