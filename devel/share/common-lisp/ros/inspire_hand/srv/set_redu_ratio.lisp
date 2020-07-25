; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_redu_ratio-request.msg.html

(cl:defclass <set_redu_ratio-request> (roslisp-msg-protocol:ros-message)
  ((redu_ratio
    :reader redu_ratio
    :initarg :redu_ratio
    :type cl:integer
    :initform 0))
)

(cl:defclass set_redu_ratio-request (<set_redu_ratio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_redu_ratio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_redu_ratio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_redu_ratio-request> is deprecated: use inspire_hand-srv:set_redu_ratio-request instead.")))

(cl:ensure-generic-function 'redu_ratio-val :lambda-list '(m))
(cl:defmethod redu_ratio-val ((m <set_redu_ratio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:redu_ratio-val is deprecated.  Use inspire_hand-srv:redu_ratio instead.")
  (redu_ratio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_redu_ratio-request>) ostream)
  "Serializes a message object of type '<set_redu_ratio-request>"
  (cl:let* ((signed (cl:slot-value msg 'redu_ratio)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_redu_ratio-request>) istream)
  "Deserializes a message object of type '<set_redu_ratio-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'redu_ratio) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_redu_ratio-request>)))
  "Returns string type for a service object of type '<set_redu_ratio-request>"
  "inspire_hand/set_redu_ratioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_redu_ratio-request)))
  "Returns string type for a service object of type 'set_redu_ratio-request"
  "inspire_hand/set_redu_ratioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_redu_ratio-request>)))
  "Returns md5sum for a message object of type '<set_redu_ratio-request>"
  "e26114f6520fcbdb49066d390f601c35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_redu_ratio-request)))
  "Returns md5sum for a message object of type 'set_redu_ratio-request"
  "e26114f6520fcbdb49066d390f601c35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_redu_ratio-request>)))
  "Returns full string definition for message of type '<set_redu_ratio-request>"
  (cl:format cl:nil "int32 redu_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_redu_ratio-request)))
  "Returns full string definition for message of type 'set_redu_ratio-request"
  (cl:format cl:nil "int32 redu_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_redu_ratio-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_redu_ratio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_redu_ratio-request
    (cl:cons ':redu_ratio (redu_ratio msg))
))
;//! \htmlinclude set_redu_ratio-response.msg.html

(cl:defclass <set_redu_ratio-response> (roslisp-msg-protocol:ros-message)
  ((redu_ratiograb
    :reader redu_ratiograb
    :initarg :redu_ratiograb
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_redu_ratio-response (<set_redu_ratio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_redu_ratio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_redu_ratio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_redu_ratio-response> is deprecated: use inspire_hand-srv:set_redu_ratio-response instead.")))

(cl:ensure-generic-function 'redu_ratiograb-val :lambda-list '(m))
(cl:defmethod redu_ratiograb-val ((m <set_redu_ratio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:redu_ratiograb-val is deprecated.  Use inspire_hand-srv:redu_ratiograb instead.")
  (redu_ratiograb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_redu_ratio-response>) ostream)
  "Serializes a message object of type '<set_redu_ratio-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'redu_ratiograb) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_redu_ratio-response>) istream)
  "Deserializes a message object of type '<set_redu_ratio-response>"
    (cl:setf (cl:slot-value msg 'redu_ratiograb) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_redu_ratio-response>)))
  "Returns string type for a service object of type '<set_redu_ratio-response>"
  "inspire_hand/set_redu_ratioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_redu_ratio-response)))
  "Returns string type for a service object of type 'set_redu_ratio-response"
  "inspire_hand/set_redu_ratioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_redu_ratio-response>)))
  "Returns md5sum for a message object of type '<set_redu_ratio-response>"
  "e26114f6520fcbdb49066d390f601c35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_redu_ratio-response)))
  "Returns md5sum for a message object of type 'set_redu_ratio-response"
  "e26114f6520fcbdb49066d390f601c35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_redu_ratio-response>)))
  "Returns full string definition for message of type '<set_redu_ratio-response>"
  (cl:format cl:nil "bool redu_ratiograb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_redu_ratio-response)))
  "Returns full string definition for message of type 'set_redu_ratio-response"
  (cl:format cl:nil "bool redu_ratiograb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_redu_ratio-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_redu_ratio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_redu_ratio-response
    (cl:cons ':redu_ratiograb (redu_ratiograb msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_redu_ratio)))
  'set_redu_ratio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_redu_ratio)))
  'set_redu_ratio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_redu_ratio)))
  "Returns string type for a service object of type '<set_redu_ratio>"
  "inspire_hand/set_redu_ratio")