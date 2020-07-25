; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_pos-request.msg.html

(cl:defclass <set_pos-request> (roslisp-msg-protocol:ros-message)
  ((pos0
    :reader pos0
    :initarg :pos0
    :type cl:integer
    :initform 0)
   (pos1
    :reader pos1
    :initarg :pos1
    :type cl:integer
    :initform 0)
   (pos2
    :reader pos2
    :initarg :pos2
    :type cl:integer
    :initform 0)
   (pos3
    :reader pos3
    :initarg :pos3
    :type cl:integer
    :initform 0)
   (pos4
    :reader pos4
    :initarg :pos4
    :type cl:integer
    :initform 0)
   (pos5
    :reader pos5
    :initarg :pos5
    :type cl:integer
    :initform 0))
)

(cl:defclass set_pos-request (<set_pos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_pos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_pos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_pos-request> is deprecated: use inspire_hand-srv:set_pos-request instead.")))

(cl:ensure-generic-function 'pos0-val :lambda-list '(m))
(cl:defmethod pos0-val ((m <set_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:pos0-val is deprecated.  Use inspire_hand-srv:pos0 instead.")
  (pos0 m))

(cl:ensure-generic-function 'pos1-val :lambda-list '(m))
(cl:defmethod pos1-val ((m <set_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:pos1-val is deprecated.  Use inspire_hand-srv:pos1 instead.")
  (pos1 m))

(cl:ensure-generic-function 'pos2-val :lambda-list '(m))
(cl:defmethod pos2-val ((m <set_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:pos2-val is deprecated.  Use inspire_hand-srv:pos2 instead.")
  (pos2 m))

(cl:ensure-generic-function 'pos3-val :lambda-list '(m))
(cl:defmethod pos3-val ((m <set_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:pos3-val is deprecated.  Use inspire_hand-srv:pos3 instead.")
  (pos3 m))

(cl:ensure-generic-function 'pos4-val :lambda-list '(m))
(cl:defmethod pos4-val ((m <set_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:pos4-val is deprecated.  Use inspire_hand-srv:pos4 instead.")
  (pos4 m))

(cl:ensure-generic-function 'pos5-val :lambda-list '(m))
(cl:defmethod pos5-val ((m <set_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:pos5-val is deprecated.  Use inspire_hand-srv:pos5 instead.")
  (pos5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_pos-request>) ostream)
  "Serializes a message object of type '<set_pos-request>"
  (cl:let* ((signed (cl:slot-value msg 'pos0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_pos-request>) istream)
  "Deserializes a message object of type '<set_pos-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_pos-request>)))
  "Returns string type for a service object of type '<set_pos-request>"
  "inspire_hand/set_posRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_pos-request)))
  "Returns string type for a service object of type 'set_pos-request"
  "inspire_hand/set_posRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_pos-request>)))
  "Returns md5sum for a message object of type '<set_pos-request>"
  "469bce018568d1f214a0c5f75e89bf97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_pos-request)))
  "Returns md5sum for a message object of type 'set_pos-request"
  "469bce018568d1f214a0c5f75e89bf97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_pos-request>)))
  "Returns full string definition for message of type '<set_pos-request>"
  (cl:format cl:nil "int32 pos0~%int32 pos1~%int32 pos2~%int32 pos3~%int32 pos4~%int32 pos5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_pos-request)))
  "Returns full string definition for message of type 'set_pos-request"
  (cl:format cl:nil "int32 pos0~%int32 pos1~%int32 pos2~%int32 pos3~%int32 pos4~%int32 pos5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_pos-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_pos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_pos-request
    (cl:cons ':pos0 (pos0 msg))
    (cl:cons ':pos1 (pos1 msg))
    (cl:cons ':pos2 (pos2 msg))
    (cl:cons ':pos3 (pos3 msg))
    (cl:cons ':pos4 (pos4 msg))
    (cl:cons ':pos5 (pos5 msg))
))
;//! \htmlinclude set_pos-response.msg.html

(cl:defclass <set_pos-response> (roslisp-msg-protocol:ros-message)
  ((pos_accepted
    :reader pos_accepted
    :initarg :pos_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_pos-response (<set_pos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_pos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_pos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_pos-response> is deprecated: use inspire_hand-srv:set_pos-response instead.")))

(cl:ensure-generic-function 'pos_accepted-val :lambda-list '(m))
(cl:defmethod pos_accepted-val ((m <set_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:pos_accepted-val is deprecated.  Use inspire_hand-srv:pos_accepted instead.")
  (pos_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_pos-response>) ostream)
  "Serializes a message object of type '<set_pos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pos_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_pos-response>) istream)
  "Deserializes a message object of type '<set_pos-response>"
    (cl:setf (cl:slot-value msg 'pos_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_pos-response>)))
  "Returns string type for a service object of type '<set_pos-response>"
  "inspire_hand/set_posResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_pos-response)))
  "Returns string type for a service object of type 'set_pos-response"
  "inspire_hand/set_posResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_pos-response>)))
  "Returns md5sum for a message object of type '<set_pos-response>"
  "469bce018568d1f214a0c5f75e89bf97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_pos-response)))
  "Returns md5sum for a message object of type 'set_pos-response"
  "469bce018568d1f214a0c5f75e89bf97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_pos-response>)))
  "Returns full string definition for message of type '<set_pos-response>"
  (cl:format cl:nil "bool pos_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_pos-response)))
  "Returns full string definition for message of type 'set_pos-response"
  (cl:format cl:nil "bool pos_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_pos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_pos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_pos-response
    (cl:cons ':pos_accepted (pos_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_pos)))
  'set_pos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_pos)))
  'set_pos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_pos)))
  "Returns string type for a service object of type '<set_pos>"
  "inspire_hand/set_pos")