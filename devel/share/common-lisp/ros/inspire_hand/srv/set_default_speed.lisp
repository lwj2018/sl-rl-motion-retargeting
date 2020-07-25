; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_default_speed-request.msg.html

(cl:defclass <set_default_speed-request> (roslisp-msg-protocol:ros-message)
  ((speed0
    :reader speed0
    :initarg :speed0
    :type cl:integer
    :initform 0)
   (speed1
    :reader speed1
    :initarg :speed1
    :type cl:integer
    :initform 0)
   (speed2
    :reader speed2
    :initarg :speed2
    :type cl:integer
    :initform 0)
   (speed3
    :reader speed3
    :initarg :speed3
    :type cl:integer
    :initform 0)
   (speed4
    :reader speed4
    :initarg :speed4
    :type cl:integer
    :initform 0)
   (speed5
    :reader speed5
    :initarg :speed5
    :type cl:integer
    :initform 0))
)

(cl:defclass set_default_speed-request (<set_default_speed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_default_speed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_default_speed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_default_speed-request> is deprecated: use inspire_hand-srv:set_default_speed-request instead.")))

(cl:ensure-generic-function 'speed0-val :lambda-list '(m))
(cl:defmethod speed0-val ((m <set_default_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:speed0-val is deprecated.  Use inspire_hand-srv:speed0 instead.")
  (speed0 m))

(cl:ensure-generic-function 'speed1-val :lambda-list '(m))
(cl:defmethod speed1-val ((m <set_default_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:speed1-val is deprecated.  Use inspire_hand-srv:speed1 instead.")
  (speed1 m))

(cl:ensure-generic-function 'speed2-val :lambda-list '(m))
(cl:defmethod speed2-val ((m <set_default_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:speed2-val is deprecated.  Use inspire_hand-srv:speed2 instead.")
  (speed2 m))

(cl:ensure-generic-function 'speed3-val :lambda-list '(m))
(cl:defmethod speed3-val ((m <set_default_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:speed3-val is deprecated.  Use inspire_hand-srv:speed3 instead.")
  (speed3 m))

(cl:ensure-generic-function 'speed4-val :lambda-list '(m))
(cl:defmethod speed4-val ((m <set_default_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:speed4-val is deprecated.  Use inspire_hand-srv:speed4 instead.")
  (speed4 m))

(cl:ensure-generic-function 'speed5-val :lambda-list '(m))
(cl:defmethod speed5-val ((m <set_default_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:speed5-val is deprecated.  Use inspire_hand-srv:speed5 instead.")
  (speed5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_default_speed-request>) ostream)
  "Serializes a message object of type '<set_default_speed-request>"
  (cl:let* ((signed (cl:slot-value msg 'speed0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_default_speed-request>) istream)
  "Deserializes a message object of type '<set_default_speed-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_default_speed-request>)))
  "Returns string type for a service object of type '<set_default_speed-request>"
  "inspire_hand/set_default_speedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_default_speed-request)))
  "Returns string type for a service object of type 'set_default_speed-request"
  "inspire_hand/set_default_speedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_default_speed-request>)))
  "Returns md5sum for a message object of type '<set_default_speed-request>"
  "66b301b7e9c65c6ecc5012db3efd1bc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_default_speed-request)))
  "Returns md5sum for a message object of type 'set_default_speed-request"
  "66b301b7e9c65c6ecc5012db3efd1bc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_default_speed-request>)))
  "Returns full string definition for message of type '<set_default_speed-request>"
  (cl:format cl:nil "int32 speed0~%int32 speed1~%int32 speed2~%int32 speed3~%int32 speed4~%int32 speed5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_default_speed-request)))
  "Returns full string definition for message of type 'set_default_speed-request"
  (cl:format cl:nil "int32 speed0~%int32 speed1~%int32 speed2~%int32 speed3~%int32 speed4~%int32 speed5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_default_speed-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_default_speed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_default_speed-request
    (cl:cons ':speed0 (speed0 msg))
    (cl:cons ':speed1 (speed1 msg))
    (cl:cons ':speed2 (speed2 msg))
    (cl:cons ':speed3 (speed3 msg))
    (cl:cons ':speed4 (speed4 msg))
    (cl:cons ':speed5 (speed5 msg))
))
;//! \htmlinclude set_default_speed-response.msg.html

(cl:defclass <set_default_speed-response> (roslisp-msg-protocol:ros-message)
  ((default_speed_accepted
    :reader default_speed_accepted
    :initarg :default_speed_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_default_speed-response (<set_default_speed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_default_speed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_default_speed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_default_speed-response> is deprecated: use inspire_hand-srv:set_default_speed-response instead.")))

(cl:ensure-generic-function 'default_speed_accepted-val :lambda-list '(m))
(cl:defmethod default_speed_accepted-val ((m <set_default_speed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:default_speed_accepted-val is deprecated.  Use inspire_hand-srv:default_speed_accepted instead.")
  (default_speed_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_default_speed-response>) ostream)
  "Serializes a message object of type '<set_default_speed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'default_speed_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_default_speed-response>) istream)
  "Deserializes a message object of type '<set_default_speed-response>"
    (cl:setf (cl:slot-value msg 'default_speed_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_default_speed-response>)))
  "Returns string type for a service object of type '<set_default_speed-response>"
  "inspire_hand/set_default_speedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_default_speed-response)))
  "Returns string type for a service object of type 'set_default_speed-response"
  "inspire_hand/set_default_speedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_default_speed-response>)))
  "Returns md5sum for a message object of type '<set_default_speed-response>"
  "66b301b7e9c65c6ecc5012db3efd1bc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_default_speed-response)))
  "Returns md5sum for a message object of type 'set_default_speed-response"
  "66b301b7e9c65c6ecc5012db3efd1bc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_default_speed-response>)))
  "Returns full string definition for message of type '<set_default_speed-response>"
  (cl:format cl:nil "bool default_speed_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_default_speed-response)))
  "Returns full string definition for message of type 'set_default_speed-response"
  (cl:format cl:nil "bool default_speed_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_default_speed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_default_speed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_default_speed-response
    (cl:cons ':default_speed_accepted (default_speed_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_default_speed)))
  'set_default_speed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_default_speed)))
  'set_default_speed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_default_speed)))
  "Returns string type for a service object of type '<set_default_speed>"
  "inspire_hand/set_default_speed")