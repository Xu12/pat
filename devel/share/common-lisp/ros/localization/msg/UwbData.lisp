; Auto-generated. Do not edit!


(cl:in-package localization-msg)


;//! \htmlinclude UwbData.msg.html

(cl:defclass <UwbData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (source_id
    :reader source_id
    :initarg :source_id
    :type cl:fixnum
    :initform 0)
   (source_idx
    :reader source_idx
    :initarg :source_idx
    :type cl:fixnum
    :initform 0)
   (antenna
    :reader antenna
    :initarg :antenna
    :type cl:fixnum
    :initform 0)
   (uwb_time
    :reader uwb_time
    :initarg :uwb_time
    :type cl:integer
    :initform 0)
   (data_size
    :reader data_size
    :initarg :data_size
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UwbData (<UwbData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization-msg:<UwbData> is deprecated: use localization-msg:UwbData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UwbData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization-msg:header-val is deprecated.  Use localization-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'source_id-val :lambda-list '(m))
(cl:defmethod source_id-val ((m <UwbData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization-msg:source_id-val is deprecated.  Use localization-msg:source_id instead.")
  (source_id m))

(cl:ensure-generic-function 'source_idx-val :lambda-list '(m))
(cl:defmethod source_idx-val ((m <UwbData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization-msg:source_idx-val is deprecated.  Use localization-msg:source_idx instead.")
  (source_idx m))

(cl:ensure-generic-function 'antenna-val :lambda-list '(m))
(cl:defmethod antenna-val ((m <UwbData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization-msg:antenna-val is deprecated.  Use localization-msg:antenna instead.")
  (antenna m))

(cl:ensure-generic-function 'uwb_time-val :lambda-list '(m))
(cl:defmethod uwb_time-val ((m <UwbData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization-msg:uwb_time-val is deprecated.  Use localization-msg:uwb_time instead.")
  (uwb_time m))

(cl:ensure-generic-function 'data_size-val :lambda-list '(m))
(cl:defmethod data_size-val ((m <UwbData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization-msg:data_size-val is deprecated.  Use localization-msg:data_size instead.")
  (data_size m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UwbData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization-msg:data-val is deprecated.  Use localization-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbData>) ostream)
  "Serializes a message object of type '<UwbData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_idx)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'antenna)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uwb_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uwb_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uwb_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uwb_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbData>) istream)
  "Deserializes a message object of type '<UwbData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_idx)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'antenna) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uwb_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbData>)))
  "Returns string type for a message object of type '<UwbData>"
  "localization/UwbData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbData)))
  "Returns string type for a message object of type 'UwbData"
  "localization/UwbData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbData>)))
  "Returns md5sum for a message object of type '<UwbData>"
  "896b7e3783097862580617e2dfa7fe33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbData)))
  "Returns md5sum for a message object of type 'UwbData"
  "896b7e3783097862580617e2dfa7fe33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbData>)))
  "Returns full string definition for message of type '<UwbData>"
  (cl:format cl:nil "Header header					# ROS header~%uint8 source_id					# Identity number of the data sending P4xx~%uint8 source_idx				# Index number of the data sending node passed by rosparam~%int8 antenna					# Antenna where the measurement was carried out~%uint32 uwb_time 				# ms since radio boot at the time of the range conversation~%uint16 data_size				# number of data bytes received~%uint8[] data					# data array, data message will come seperately from the range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbData)))
  "Returns full string definition for message of type 'UwbData"
  (cl:format cl:nil "Header header					# ROS header~%uint8 source_id					# Identity number of the data sending P4xx~%uint8 source_idx				# Index number of the data sending node passed by rosparam~%int8 antenna					# Antenna where the measurement was carried out~%uint32 uwb_time 				# ms since radio boot at the time of the range conversation~%uint16 data_size				# number of data bytes received~%uint8[] data					# data array, data message will come seperately from the range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbData>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbData
    (cl:cons ':header (header msg))
    (cl:cons ':source_id (source_id msg))
    (cl:cons ':source_idx (source_idx msg))
    (cl:cons ':antenna (antenna msg))
    (cl:cons ':uwb_time (uwb_time msg))
    (cl:cons ':data_size (data_size msg))
    (cl:cons ':data (data msg))
))
