; Auto-generated. Do not edit!


(cl:in-package uwb_driver-srv)


;//! \htmlinclude uwbModeConfig-request.msg.html

(cl:defclass <uwbModeConfig-request> (roslisp-msg-protocol:ros-message)
  ((p4xxmode
    :reader p4xxmode
    :initarg :p4xxmode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass uwbModeConfig-request (<uwbModeConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbModeConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbModeConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uwb_driver-srv:<uwbModeConfig-request> is deprecated: use uwb_driver-srv:uwbModeConfig-request instead.")))

(cl:ensure-generic-function 'p4xxmode-val :lambda-list '(m))
(cl:defmethod p4xxmode-val ((m <uwbModeConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:p4xxmode-val is deprecated.  Use uwb_driver-srv:p4xxmode instead.")
  (p4xxmode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbModeConfig-request>) ostream)
  "Serializes a message object of type '<uwbModeConfig-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'p4xxmode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbModeConfig-request>) istream)
  "Deserializes a message object of type '<uwbModeConfig-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'p4xxmode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbModeConfig-request>)))
  "Returns string type for a service object of type '<uwbModeConfig-request>"
  "uwb_driver/uwbModeConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbModeConfig-request)))
  "Returns string type for a service object of type 'uwbModeConfig-request"
  "uwb_driver/uwbModeConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbModeConfig-request>)))
  "Returns md5sum for a message object of type '<uwbModeConfig-request>"
  "ee0225d8527cf21f50a2678605fa6de2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbModeConfig-request)))
  "Returns md5sum for a message object of type 'uwbModeConfig-request"
  "ee0225d8527cf21f50a2678605fa6de2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbModeConfig-request>)))
  "Returns full string definition for message of type '<uwbModeConfig-request>"
  (cl:format cl:nil "uint8 p4xxmode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbModeConfig-request)))
  "Returns full string definition for message of type 'uwbModeConfig-request"
  (cl:format cl:nil "uint8 p4xxmode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbModeConfig-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbModeConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbModeConfig-request
    (cl:cons ':p4xxmode (p4xxmode msg))
))
;//! \htmlinclude uwbModeConfig-response.msg.html

(cl:defclass <uwbModeConfig-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass uwbModeConfig-response (<uwbModeConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbModeConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbModeConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uwb_driver-srv:<uwbModeConfig-response> is deprecated: use uwb_driver-srv:uwbModeConfig-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <uwbModeConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uwb_driver-srv:result-val is deprecated.  Use uwb_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbModeConfig-response>) ostream)
  "Serializes a message object of type '<uwbModeConfig-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbModeConfig-response>) istream)
  "Deserializes a message object of type '<uwbModeConfig-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbModeConfig-response>)))
  "Returns string type for a service object of type '<uwbModeConfig-response>"
  "uwb_driver/uwbModeConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbModeConfig-response)))
  "Returns string type for a service object of type 'uwbModeConfig-response"
  "uwb_driver/uwbModeConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbModeConfig-response>)))
  "Returns md5sum for a message object of type '<uwbModeConfig-response>"
  "ee0225d8527cf21f50a2678605fa6de2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbModeConfig-response)))
  "Returns md5sum for a message object of type 'uwbModeConfig-response"
  "ee0225d8527cf21f50a2678605fa6de2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbModeConfig-response>)))
  "Returns full string definition for message of type '<uwbModeConfig-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbModeConfig-response)))
  "Returns full string definition for message of type 'uwbModeConfig-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbModeConfig-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbModeConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbModeConfig-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'uwbModeConfig)))
  'uwbModeConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'uwbModeConfig)))
  'uwbModeConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbModeConfig)))
  "Returns string type for a service object of type '<uwbModeConfig>"
  "uwb_driver/uwbModeConfig")