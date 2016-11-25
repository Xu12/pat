;; Auto-generated. Do not edit!


(when (boundp 'uwb_driver::UwbRange)
  (if (not (find-package "UWB_DRIVER"))
    (make-package "UWB_DRIVER"))
  (shadow 'UwbRange (find-package "UWB_DRIVER")))
(unless (find-package "UWB_DRIVER::UWBRANGE")
  (make-package "UWB_DRIVER::UWBRANGE"))

(in-package "ROS")
;;//! \htmlinclude UwbRange.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass uwb_driver::UwbRange
  :super ros::object
  :slots (_header _responder_id _responder_idx _distance _distance_err _distance_dot _distance_dot_err _antenna _stopwatch_time _uwb_time _responder_location ))

(defmethod uwb_driver::UwbRange
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:responder_id __responder_id) 0)
    ((:responder_idx __responder_idx) 0)
    ((:distance __distance) 0.0)
    ((:distance_err __distance_err) 0.0)
    ((:distance_dot __distance_dot) 0.0)
    ((:distance_dot_err __distance_dot_err) 0.0)
    ((:antenna __antenna) 0)
    ((:stopwatch_time __stopwatch_time) 0)
    ((:uwb_time __uwb_time) 0)
    ((:responder_location __responder_location) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _responder_id (round __responder_id))
   (setq _responder_idx (round __responder_idx))
   (setq _distance (float __distance))
   (setq _distance_err (float __distance_err))
   (setq _distance_dot (float __distance_dot))
   (setq _distance_dot_err (float __distance_dot_err))
   (setq _antenna (round __antenna))
   (setq _stopwatch_time (round __stopwatch_time))
   (setq _uwb_time (round __uwb_time))
   (setq _responder_location __responder_location)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:responder_id
   (&optional __responder_id)
   (if __responder_id (setq _responder_id __responder_id)) _responder_id)
  (:responder_idx
   (&optional __responder_idx)
   (if __responder_idx (setq _responder_idx __responder_idx)) _responder_idx)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:distance_err
   (&optional __distance_err)
   (if __distance_err (setq _distance_err __distance_err)) _distance_err)
  (:distance_dot
   (&optional __distance_dot)
   (if __distance_dot (setq _distance_dot __distance_dot)) _distance_dot)
  (:distance_dot_err
   (&optional __distance_dot_err)
   (if __distance_dot_err (setq _distance_dot_err __distance_dot_err)) _distance_dot_err)
  (:antenna
   (&optional __antenna)
   (if __antenna (setq _antenna __antenna)) _antenna)
  (:stopwatch_time
   (&optional __stopwatch_time)
   (if __stopwatch_time (setq _stopwatch_time __stopwatch_time)) _stopwatch_time)
  (:uwb_time
   (&optional __uwb_time)
   (if __uwb_time (setq _uwb_time __uwb_time)) _uwb_time)
  (:responder_location
   (&rest __responder_location)
   (if (keywordp (car __responder_location))
       (send* _responder_location __responder_location)
     (progn
       (if __responder_location (setq _responder_location (car __responder_location)))
       _responder_location)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _responder_id
    1
    ;; uint8 _responder_idx
    1
    ;; float32 _distance
    4
    ;; float32 _distance_err
    4
    ;; float32 _distance_dot
    4
    ;; float32 _distance_dot_err
    4
    ;; int8 _antenna
    1
    ;; uint16 _stopwatch_time
    2
    ;; uint32 _uwb_time
    4
    ;; geometry_msgs/Point _responder_location
    (send _responder_location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _responder_id
       (write-byte _responder_id s)
     ;; uint8 _responder_idx
       (write-byte _responder_idx s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_err
       (sys::poke _distance_err (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_dot
       (sys::poke _distance_dot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_dot_err
       (sys::poke _distance_dot_err (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _antenna
       (write-byte _antenna s)
     ;; uint16 _stopwatch_time
       (write-word _stopwatch_time s)
     ;; uint32 _uwb_time
       (write-long _uwb_time s)
     ;; geometry_msgs/Point _responder_location
       (send _responder_location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _responder_id
     (setq _responder_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _responder_idx
     (setq _responder_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_err
     (setq _distance_err (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_dot
     (setq _distance_dot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_dot_err
     (setq _distance_dot_err (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _antenna
     (setq _antenna (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _antenna 127) (setq _antenna (- _antenna 256)))
   ;; uint16 _stopwatch_time
     (setq _stopwatch_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _uwb_time
     (setq _uwb_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _responder_location
     (send _responder_location :deserialize buf ptr-) (incf ptr- (send _responder_location :serialization-length))
   ;;
   self)
  )

(setf (get uwb_driver::UwbRange :md5sum-) "087a1d035ad0011be2ad2b94335b90d7")
(setf (get uwb_driver::UwbRange :datatype-) "uwb_driver/UwbRange")
(setf (get uwb_driver::UwbRange :definition-)
      "Header header					            # ROS header
uint8 responder_id				            # Identity number of the responding P4xx
uint8 responder_idx				            # Index number of the node in the responding array passed by rosparam
float32 distance				            # Distance measurement
float32 distance_err                                        # Error estimated by P4xx
float32 distance_dot                                        # Range velocity estimated by Pxx
float32 distance_dot_err                                    # Range velocity error estimated by Pxx
int8 antenna					            # Antenna where the measurement was carried out
uint16 stopwatch_time                                       # How long the range conversation took, in ms
uint32 uwb_time					            # ms since radio boot at the time of the range conversation nb
geometry_msgs/Point responder_location		# Location of the node if known

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :uwb_driver/UwbRange "087a1d035ad0011be2ad2b94335b90d7")


