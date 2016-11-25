;; Auto-generated. Do not edit!


(when (boundp 'localization::UwbData)
  (if (not (find-package "LOCALIZATION"))
    (make-package "LOCALIZATION"))
  (shadow 'UwbData (find-package "LOCALIZATION")))
(unless (find-package "LOCALIZATION::UWBDATA")
  (make-package "LOCALIZATION::UWBDATA"))

(in-package "ROS")
;;//! \htmlinclude UwbData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass localization::UwbData
  :super ros::object
  :slots (_header _source_id _source_idx _antenna _uwb_time _data_size _data ))

(defmethod localization::UwbData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source_id __source_id) 0)
    ((:source_idx __source_idx) 0)
    ((:antenna __antenna) 0)
    ((:uwb_time __uwb_time) 0)
    ((:data_size __data_size) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _source_id (round __source_id))
   (setq _source_idx (round __source_idx))
   (setq _antenna (round __antenna))
   (setq _uwb_time (round __uwb_time))
   (setq _data_size (round __data_size))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source_id
   (&optional __source_id)
   (if __source_id (setq _source_id __source_id)) _source_id)
  (:source_idx
   (&optional __source_idx)
   (if __source_idx (setq _source_idx __source_idx)) _source_idx)
  (:antenna
   (&optional __antenna)
   (if __antenna (setq _antenna __antenna)) _antenna)
  (:uwb_time
   (&optional __uwb_time)
   (if __uwb_time (setq _uwb_time __uwb_time)) _uwb_time)
  (:data_size
   (&optional __data_size)
   (if __data_size (setq _data_size __data_size)) _data_size)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _source_id
    1
    ;; uint8 _source_idx
    1
    ;; int8 _antenna
    1
    ;; uint32 _uwb_time
    4
    ;; uint16 _data_size
    2
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _source_id
       (write-byte _source_id s)
     ;; uint8 _source_idx
       (write-byte _source_idx s)
     ;; int8 _antenna
       (write-byte _antenna s)
     ;; uint32 _uwb_time
       (write-long _uwb_time s)
     ;; uint16 _data_size
       (write-word _data_size s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _source_id
     (setq _source_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _source_idx
     (setq _source_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _antenna
     (setq _antenna (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _antenna 127) (setq _antenna (- _antenna 256)))
   ;; uint32 _uwb_time
     (setq _uwb_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _data_size
     (setq _data_size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get localization::UwbData :md5sum-) "896b7e3783097862580617e2dfa7fe33")
(setf (get localization::UwbData :datatype-) "localization/UwbData")
(setf (get localization::UwbData :definition-)
      "Header header					# ROS header
uint8 source_id					# Identity number of the data sending P4xx
uint8 source_idx				# Index number of the data sending node passed by rosparam
int8 antenna					# Antenna where the measurement was carried out
uint32 uwb_time 				# ms since radio boot at the time of the range conversation
uint16 data_size				# number of data bytes received
uint8[] data					# data array, data message will come seperately from the range

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :localization/UwbData "896b7e3783097862580617e2dfa7fe33")


