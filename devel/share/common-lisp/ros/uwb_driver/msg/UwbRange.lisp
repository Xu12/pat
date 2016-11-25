; Auto-generated. Do not edit!


(cl:in-package uwb_driver-msg)


;//! \htmlinclude UwbRange.msg.html

(cl:defclass <UwbRange> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (responder_id
    :reader responder_id
    :initarg :responder_id
    :type cl:fixnum
    :initform 0)
   (responder_idx
    :reader responder_idx
    :initarg :responder_idx
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (distance_err
    :reader distance_err
    :initarg :distance_err
    :type cl:float
    :initform 0.0)
   (distance_dot
    :reader distance_dot
    :initarg :distance_dot
    :type cl:float
    :initform 0.0)
   (distance_dot_err
    :reader distance_dot_err
    :initarg :distance_dot_err
    :type cl:float
    :initform 0.0)
   (antenna
    :reader antenna
    :initarg :antenna
    :type cl:fixnum
    :initform 0)
   (stopwatch_time
    :reader stopwatch_time
    :initarg :stopwatch_time
    :type cl:fixnum
    :initform 0)
   (uwb_time
    :reader uwb_time
    :initarg :uwb_time
    :type cl:integer
    :initform 0)
   (responder_location
    :reader responder_location
    :initarg :responder_location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass UwbRange (<UwbRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uwb_driver-msg:<UwbRange> is deprecated: use uwb_driver-msg:UwbRange instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:header-val is deprecated.  Use uwb_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'responder_id-val :lambda-list '(m))
(cl:defmethod responder_id-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:responder_id-val is deprecated.  Use uwb_driver-msg:responder_id instead.")
  (responder_id m))

(cl:ensure-generic-function 'responder_idx-val :lambda-list '(m))
(cl:defmethod responder_idx-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:responder_idx-val is deprecated.  Use uwb_driver-msg:responder_idx instead.")
  (responder_idx m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:distance-val is deprecated.  Use uwb_driver-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'distance_err-val :lambda-list '(m))
(cl:defmethod distance_err-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:distance_err-val is deprecated.  Use uwb_driver-msg:distance_err instead.")
  (distance_err m))

(cl:ensure-generic-function 'distance_dot-val :lambda-list '(m))
(cl:defmethod distance_dot-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:distance_dot-val is deprecated.  Use uwb_driver-msg:distance_dot instead.")
  (distance_dot m))

(cl:ensure-generic-function 'distance_dot_err-val :lambda-list '(m))
(cl:defmethod distance_dot_err-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:distance_dot_err-val is deprecated.  Use uwb_driver-msg:distance_dot_err instead.")
  (distance_dot_err m))

(cl:ensure-generic-function 'antenna-val :lambda-list '(m))
(cl:defmethod antenna-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:antenna-val is deprecated.  Use uwb_driver-msg:antenna instead.")
  (antenna m))

(cl:ensure-generic-function 'stopwatch_time-val :lambda-list '(m))
(cl:defmethod stopwatch_time-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:stopwatch_time-val is deprecated.  Use uwb_driver-msg:stopwatch_time instead.")
  (stopwatch_time m))

(cl:ensure-generic-function 'uwb_time-val :lambda-list '(m))
(cl:defmethod uwb_time-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:uwb_time-val is deprecated.  Use uwb_driver-msg:uwb_time instead.")
  (uwb_time m))

(cl:ensure-generic-function 'responder_location-val :lambda-list '(m))
(cl:defmethod responder_location-val ((m <UwbRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-msg:responder_location-val is deprecated.  Use uwb_driver-msg:responder_location instead.")
  (responder_location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbRange>) ostream)
  "Serializes a message object of type '<UwbRange>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_idx)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_err))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_dot_err))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'antenna)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopwatch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopwatch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uwb_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uwb_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uwb_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uwb_time)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'responder_location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbRange>) istream)
  "Deserializes a message object of type '<UwbRange>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_idx)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_err) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_dot) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_dot_err) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'antenna) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopwatch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopwatch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'responder_location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbRange>)))
  "Returns string type for a message object of type '<UwbRange>"
  "uwb_driver/UwbRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbRange)))
  "Returns string type for a message object of type 'UwbRange"
  "uwb_driver/UwbRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbRange>)))
  "Returns md5sum for a message object of type '<UwbRange>"
  "087a1d035ad0011be2ad2b94335b90d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbRange)))
  "Returns md5sum for a message object of type 'UwbRange"
  "087a1d035ad0011be2ad2b94335b90d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbRange>)))
  "Returns full string definition for message of type '<UwbRange>"
  (cl:format cl:nil "Header header					            # ROS header~%uint8 responder_id				            # Identity number of the responding P4xx~%uint8 responder_idx				            # Index number of the node in the responding array passed by rosparam~%float32 distance				            # Distance measurement~%float32 distance_err                                        # Error estimated by P4xx~%float32 distance_dot                                        # Range velocity estimated by Pxx~%float32 distance_dot_err                                    # Range velocity error estimated by Pxx~%int8 antenna					            # Antenna where the measurement was carried out~%uint16 stopwatch_time                                       # How long the range conversation took, in ms~%uint32 uwb_time					            # ms since radio boot at the time of the range conversation nb~%geometry_msgs/Point responder_location		# Location of the node if known~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbRange)))
  "Returns full string definition for message of type 'UwbRange"
  (cl:format cl:nil "Header header					            # ROS header~%uint8 responder_id				            # Identity number of the responding P4xx~%uint8 responder_idx				            # Index number of the node in the responding array passed by rosparam~%float32 distance				            # Distance measurement~%float32 distance_err                                        # Error estimated by P4xx~%float32 distance_dot                                        # Range velocity estimated by Pxx~%float32 distance_dot_err                                    # Range velocity error estimated by Pxx~%int8 antenna					            # Antenna where the measurement was carried out~%uint16 stopwatch_time                                       # How long the range conversation took, in ms~%uint32 uwb_time					            # ms since radio boot at the time of the range conversation nb~%geometry_msgs/Point responder_location		# Location of the node if known~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbRange>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     4
     1
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'responder_location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbRange>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbRange
    (cl:cons ':header (header msg))
    (cl:cons ':responder_id (responder_id msg))
    (cl:cons ':responder_idx (responder_idx msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':distance_err (distance_err msg))
    (cl:cons ':distance_dot (distance_dot msg))
    (cl:cons ':distance_dot_err (distance_dot_err msg))
    (cl:cons ':antenna (antenna msg))
    (cl:cons ':stopwatch_time (stopwatch_time msg))
    (cl:cons ':uwb_time (uwb_time msg))
    (cl:cons ':responder_location (responder_location msg))
))
