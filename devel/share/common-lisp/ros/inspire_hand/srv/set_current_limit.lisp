; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_current_limit-request.msg.html

(cl:defclass <set_current_limit-request> (roslisp-msg-protocol:ros-message)
  ((current0
    :reader current0
    :initarg :current0
    :type cl:integer
    :initform 0)
   (current1
    :reader current1
    :initarg :current1
    :type cl:integer
    :initform 0)
   (current2
    :reader current2
    :initarg :current2
    :type cl:integer
    :initform 0)
   (current3
    :reader current3
    :initarg :current3
    :type cl:integer
    :initform 0)
   (current4
    :reader current4
    :initarg :current4
    :type cl:integer
    :initform 0)
   (current5
    :reader current5
    :initarg :current5
    :type cl:integer
    :initform 0))
)

(cl:defclass set_current_limit-request (<set_current_limit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_current_limit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_current_limit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_current_limit-request> is deprecated: use inspire_hand-srv:set_current_limit-request instead.")))

(cl:ensure-generic-function 'current0-val :lambda-list '(m))
(cl:defmethod current0-val ((m <set_current_limit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current0-val is deprecated.  Use inspire_hand-srv:current0 instead.")
  (current0 m))

(cl:ensure-generic-function 'current1-val :lambda-list '(m))
(cl:defmethod current1-val ((m <set_current_limit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current1-val is deprecated.  Use inspire_hand-srv:current1 instead.")
  (current1 m))

(cl:ensure-generic-function 'current2-val :lambda-list '(m))
(cl:defmethod current2-val ((m <set_current_limit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current2-val is deprecated.  Use inspire_hand-srv:current2 instead.")
  (current2 m))

(cl:ensure-generic-function 'current3-val :lambda-list '(m))
(cl:defmethod current3-val ((m <set_current_limit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current3-val is deprecated.  Use inspire_hand-srv:current3 instead.")
  (current3 m))

(cl:ensure-generic-function 'current4-val :lambda-list '(m))
(cl:defmethod current4-val ((m <set_current_limit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current4-val is deprecated.  Use inspire_hand-srv:current4 instead.")
  (current4 m))

(cl:ensure-generic-function 'current5-val :lambda-list '(m))
(cl:defmethod current5-val ((m <set_current_limit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current5-val is deprecated.  Use inspire_hand-srv:current5 instead.")
  (current5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_current_limit-request>) ostream)
  "Serializes a message object of type '<set_current_limit-request>"
  (cl:let* ((signed (cl:slot-value msg 'current0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_current_limit-request>) istream)
  "Deserializes a message object of type '<set_current_limit-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_current_limit-request>)))
  "Returns string type for a service object of type '<set_current_limit-request>"
  "inspire_hand/set_current_limitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_current_limit-request)))
  "Returns string type for a service object of type 'set_current_limit-request"
  "inspire_hand/set_current_limitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_current_limit-request>)))
  "Returns md5sum for a message object of type '<set_current_limit-request>"
  "422c9f6eddce4f2b83bdd05a0c49ffe4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_current_limit-request)))
  "Returns md5sum for a message object of type 'set_current_limit-request"
  "422c9f6eddce4f2b83bdd05a0c49ffe4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_current_limit-request>)))
  "Returns full string definition for message of type '<set_current_limit-request>"
  (cl:format cl:nil "int32 current0~%int32 current1~%int32 current2~%int32 current3~%int32 current4~%int32 current5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_current_limit-request)))
  "Returns full string definition for message of type 'set_current_limit-request"
  (cl:format cl:nil "int32 current0~%int32 current1~%int32 current2~%int32 current3~%int32 current4~%int32 current5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_current_limit-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_current_limit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_current_limit-request
    (cl:cons ':current0 (current0 msg))
    (cl:cons ':current1 (current1 msg))
    (cl:cons ':current2 (current2 msg))
    (cl:cons ':current3 (current3 msg))
    (cl:cons ':current4 (current4 msg))
    (cl:cons ':current5 (current5 msg))
))
;//! \htmlinclude set_current_limit-response.msg.html

(cl:defclass <set_current_limit-response> (roslisp-msg-protocol:ros-message)
  ((current_limit_accepted
    :reader current_limit_accepted
    :initarg :current_limit_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_current_limit-response (<set_current_limit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_current_limit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_current_limit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_current_limit-response> is deprecated: use inspire_hand-srv:set_current_limit-response instead.")))

(cl:ensure-generic-function 'current_limit_accepted-val :lambda-list '(m))
(cl:defmethod current_limit_accepted-val ((m <set_current_limit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current_limit_accepted-val is deprecated.  Use inspire_hand-srv:current_limit_accepted instead.")
  (current_limit_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_current_limit-response>) ostream)
  "Serializes a message object of type '<set_current_limit-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'current_limit_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_current_limit-response>) istream)
  "Deserializes a message object of type '<set_current_limit-response>"
    (cl:setf (cl:slot-value msg 'current_limit_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_current_limit-response>)))
  "Returns string type for a service object of type '<set_current_limit-response>"
  "inspire_hand/set_current_limitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_current_limit-response)))
  "Returns string type for a service object of type 'set_current_limit-response"
  "inspire_hand/set_current_limitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_current_limit-response>)))
  "Returns md5sum for a message object of type '<set_current_limit-response>"
  "422c9f6eddce4f2b83bdd05a0c49ffe4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_current_limit-response)))
  "Returns md5sum for a message object of type 'set_current_limit-response"
  "422c9f6eddce4f2b83bdd05a0c49ffe4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_current_limit-response>)))
  "Returns full string definition for message of type '<set_current_limit-response>"
  (cl:format cl:nil "bool current_limit_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_current_limit-response)))
  "Returns full string definition for message of type 'set_current_limit-response"
  (cl:format cl:nil "bool current_limit_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_current_limit-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_current_limit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_current_limit-response
    (cl:cons ':current_limit_accepted (current_limit_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_current_limit)))
  'set_current_limit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_current_limit)))
  'set_current_limit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_current_limit)))
  "Returns string type for a service object of type '<set_current_limit>"
  "inspire_hand/set_current_limit")