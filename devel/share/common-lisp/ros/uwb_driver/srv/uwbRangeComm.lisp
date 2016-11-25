; Auto-generated. Do not edit!


(cl:in-package uwb_driver-srv)


;//! \htmlinclude uwbRangeComm-request.msg.html

(cl:defclass <uwbRangeComm-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (responder
    :reader responder
    :initarg :responder
    :type cl:fixnum
    :initform 0)
   (antenna
    :reader antenna
    :initarg :antenna
    :type cl:fixnum
    :initform 0)
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
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

(cl:defclass uwbRangeComm-request (<uwbRangeComm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbRangeComm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbRangeComm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uwb_driver-srv:<uwbRangeComm-request> is deprecated: use uwb_driver-srv:uwbRangeComm-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <uwbRangeComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:action-val is deprecated.  Use uwb_driver-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'responder-val :lambda-list '(m))
(cl:defmethod responder-val ((m <uwbRangeComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:responder-val is deprecated.  Use uwb_driver-srv:responder instead.")
  (responder m))

(cl:ensure-generic-function 'antenna-val :lambda-list '(m))
(cl:defmethod antenna-val ((m <uwbRangeComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:antenna-val is deprecated.  Use uwb_driver-srv:antenna instead.")
  (antenna m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <uwbRangeComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:channel-val is deprecated.  Use uwb_driver-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'data_size-val :lambda-list '(m))
(cl:defmethod data_size-val ((m <uwbRangeComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:data_size-val is deprecated.  Use uwb_driver-srv:data_size instead.")
  (data_size m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <uwbRangeComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:data-val is deprecated.  Use uwb_driver-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbRangeComm-request>) ostream)
  "Serializes a message object of type '<uwbRangeComm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antenna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbRangeComm-request>) istream)
  "Deserializes a message object of type '<uwbRangeComm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antenna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbRangeComm-request>)))
  "Returns string type for a service object of type '<uwbRangeComm-request>"
  "uwb_driver/uwbRangeCommRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbRangeComm-request)))
  "Returns string type for a service object of type 'uwbRangeComm-request"
  "uwb_driver/uwbRangeCommRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbRangeComm-request>)))
  "Returns md5sum for a message object of type '<uwbRangeComm-request>"
  "112b5681119ecc68ece4e0e294e8f5cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbRangeComm-request)))
  "Returns md5sum for a message object of type 'uwbRangeComm-request"
  "112b5681119ecc68ece4e0e294e8f5cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbRangeComm-request>)))
  "Returns full string definition for message of type '<uwbRangeComm-request>"
  (cl:format cl:nil "uint8 action~%~%~%~%~%~%uint8 responder~%uint8 antenna~%uint8 channel~%uint16 data_size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbRangeComm-request)))
  "Returns full string definition for message of type 'uwbRangeComm-request"
  (cl:format cl:nil "uint8 action~%~%~%~%~%~%uint8 responder~%uint8 antenna~%uint8 channel~%uint16 data_size~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbRangeComm-request>))
  (cl:+ 0
     1
     1
     1
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbRangeComm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbRangeComm-request
    (cl:cons ':action (action msg))
    (cl:cons ':responder (responder msg))
    (cl:cons ':antenna (antenna msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':data_size (data_size msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude uwbRangeComm-response.msg.html

(cl:defclass <uwbRangeComm-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass uwbRangeComm-response (<uwbRangeComm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbRangeComm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbRangeComm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uwb_driver-srv:<uwbRangeComm-response> is deprecated: use uwb_driver-srv:uwbRangeComm-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <uwbRangeComm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:result-val is deprecated.  Use uwb_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbRangeComm-response>) ostream)
  "Serializes a message object of type '<uwbRangeComm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbRangeComm-response>) istream)
  "Deserializes a message object of type '<uwbRangeComm-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbRangeComm-response>)))
  "Returns string type for a service object of type '<uwbRangeComm-response>"
  "uwb_driver/uwbRangeCommResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbRangeComm-response)))
  "Returns string type for a service object of type 'uwbRangeComm-response"
  "uwb_driver/uwbRangeCommResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbRangeComm-response>)))
  "Returns md5sum for a message object of type '<uwbRangeComm-response>"
  "112b5681119ecc68ece4e0e294e8f5cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbRangeComm-response)))
  "Returns md5sum for a message object of type 'uwbRangeComm-response"
  "112b5681119ecc68ece4e0e294e8f5cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbRangeComm-response>)))
  "Returns full string definition for message of type '<uwbRangeComm-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbRangeComm-response)))
  "Returns full string definition for message of type 'uwbRangeComm-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbRangeComm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbRangeComm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbRangeComm-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'uwbRangeComm)))
  'uwbRangeComm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'uwbRangeComm)))
  'uwbRangeComm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbRangeComm)))
  "Returns string type for a service object of type '<uwbRangeComm>"
  "uwb_driver/uwbRangeComm")