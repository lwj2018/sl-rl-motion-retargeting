; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_force-request.msg.html

(cl:defclass <set_force-request> (roslisp-msg-protocol:ros-message)
  ((force0
    :reader force0
    :initarg :force0
    :type cl:integer
    :initform 0)
   (force1
    :reader force1
    :initarg :force1
    :type cl:integer
    :initform 0)
   (force2
    :reader force2
    :initarg :force2
    :type cl:integer
    :initform 0)
   (force3
    :reader force3
    :initarg :force3
    :type cl:integer
    :initform 0)
   (force4
    :reader force4
    :initarg :force4
    :type cl:integer
    :initform 0)
   (force5
    :reader force5
    :initarg :force5
    :type cl:integer
    :initform 0))
)

(cl:defclass set_force-request (<set_force-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_force-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_force-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_force-request> is deprecated: use inspire_hand-srv:set_force-request instead.")))

(cl:ensure-generic-function 'force0-val :lambda-list '(m))
(cl:defmethod force0-val ((m <set_force-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:force0-val is deprecated.  Use inspire_hand-srv:force0 instead.")
  (force0 m))

(cl:ensure-generic-function 'force1-val :lambda-list '(m))
(cl:defmethod force1-val ((m <set_force-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:force1-val is deprecated.  Use inspire_hand-srv:force1 instead.")
  (force1 m))

(cl:ensure-generic-function 'force2-val :lambda-list '(m))
(cl:defmethod force2-val ((m <set_force-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:force2-val is deprecated.  Use inspire_hand-srv:force2 instead.")
  (force2 m))

(cl:ensure-generic-function 'force3-val :lambda-list '(m))
(cl:defmethod force3-val ((m <set_force-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:force3-val is deprecated.  Use inspire_hand-srv:force3 instead.")
  (force3 m))

(cl:ensure-generic-function 'force4-val :lambda-list '(m))
(cl:defmethod force4-val ((m <set_force-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:force4-val is deprecated.  Use inspire_hand-srv:force4 instead.")
  (force4 m))

(cl:ensure-generic-function 'force5-val :lambda-list '(m))
(cl:defmethod force5-val ((m <set_force-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:force5-val is deprecated.  Use inspire_hand-srv:force5 instead.")
  (force5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_force-request>) ostream)
  "Serializes a message object of type '<set_force-request>"
  (cl:let* ((signed (cl:slot-value msg 'force0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'force1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'force2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'force3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'force4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'force5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_force-request>) istream)
  "Deserializes a message object of type '<set_force-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_force-request>)))
  "Returns string type for a service object of type '<set_force-request>"
  "inspire_hand/set_forceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_force-request)))
  "Returns string type for a service object of type 'set_force-request"
  "inspire_hand/set_forceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_force-request>)))
  "Returns md5sum for a message object of type '<set_force-request>"
  "f0c08814d46342da9135d3a2a4ea2666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_force-request)))
  "Returns md5sum for a message object of type 'set_force-request"
  "f0c08814d46342da9135d3a2a4ea2666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_force-request>)))
  "Returns full string definition for message of type '<set_force-request>"
  (cl:format cl:nil "int32 force0~%int32 force1~%int32 force2~%int32 force3~%int32 force4~%int32 force5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_force-request)))
  "Returns full string definition for message of type 'set_force-request"
  (cl:format cl:nil "int32 force0~%int32 force1~%int32 force2~%int32 force3~%int32 force4~%int32 force5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_force-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_force-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_force-request
    (cl:cons ':force0 (force0 msg))
    (cl:cons ':force1 (force1 msg))
    (cl:cons ':force2 (force2 msg))
    (cl:cons ':force3 (force3 msg))
    (cl:cons ':force4 (force4 msg))
    (cl:cons ':force5 (force5 msg))
))
;//! \htmlinclude set_force-response.msg.html

(cl:defclass <set_force-response> (roslisp-msg-protocol:ros-message)
  ((force_accepted
    :reader force_accepted
    :initarg :force_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_force-response (<set_force-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_force-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_force-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_force-response> is deprecated: use inspire_hand-srv:set_force-response instead.")))

(cl:ensure-generic-function 'force_accepted-val :lambda-list '(m))
(cl:defmethod force_accepted-val ((m <set_force-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:force_accepted-val is deprecated.  Use inspire_hand-srv:force_accepted instead.")
  (force_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_force-response>) ostream)
  "Serializes a message object of type '<set_force-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'force_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_force-response>) istream)
  "Deserializes a message object of type '<set_force-response>"
    (cl:setf (cl:slot-value msg 'force_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_force-response>)))
  "Returns string type for a service object of type '<set_force-response>"
  "inspire_hand/set_forceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_force-response)))
  "Returns string type for a service object of type 'set_force-response"
  "inspire_hand/set_forceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_force-response>)))
  "Returns md5sum for a message object of type '<set_force-response>"
  "f0c08814d46342da9135d3a2a4ea2666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_force-response)))
  "Returns md5sum for a message object of type 'set_force-response"
  "f0c08814d46342da9135d3a2a4ea2666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_force-response>)))
  "Returns full string definition for message of type '<set_force-response>"
  (cl:format cl:nil "bool force_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_force-response)))
  "Returns full string definition for message of type 'set_force-response"
  (cl:format cl:nil "bool force_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_force-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_force-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_force-response
    (cl:cons ':force_accepted (force_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_force)))
  'set_force-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_force)))
  'set_force-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_force)))
  "Returns string type for a service object of type '<set_force>"
  "inspire_hand/set_force")