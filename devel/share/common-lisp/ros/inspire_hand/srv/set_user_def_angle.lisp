; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_user_def_angle-request.msg.html

(cl:defclass <set_user_def_angle-request> (roslisp-msg-protocol:ros-message)
  ((angle0
    :reader angle0
    :initarg :angle0
    :type cl:integer
    :initform 0)
   (angle1
    :reader angle1
    :initarg :angle1
    :type cl:integer
    :initform 0)
   (angle2
    :reader angle2
    :initarg :angle2
    :type cl:integer
    :initform 0)
   (angle3
    :reader angle3
    :initarg :angle3
    :type cl:integer
    :initform 0)
   (angle4
    :reader angle4
    :initarg :angle4
    :type cl:integer
    :initform 0)
   (angle5
    :reader angle5
    :initarg :angle5
    :type cl:integer
    :initform 0)
   (k
    :reader k
    :initarg :k
    :type cl:integer
    :initform 0))
)

(cl:defclass set_user_def_angle-request (<set_user_def_angle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_user_def_angle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_user_def_angle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_user_def_angle-request> is deprecated: use inspire_hand-srv:set_user_def_angle-request instead.")))

(cl:ensure-generic-function 'angle0-val :lambda-list '(m))
(cl:defmethod angle0-val ((m <set_user_def_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:angle0-val is deprecated.  Use inspire_hand-srv:angle0 instead.")
  (angle0 m))

(cl:ensure-generic-function 'angle1-val :lambda-list '(m))
(cl:defmethod angle1-val ((m <set_user_def_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:angle1-val is deprecated.  Use inspire_hand-srv:angle1 instead.")
  (angle1 m))

(cl:ensure-generic-function 'angle2-val :lambda-list '(m))
(cl:defmethod angle2-val ((m <set_user_def_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:angle2-val is deprecated.  Use inspire_hand-srv:angle2 instead.")
  (angle2 m))

(cl:ensure-generic-function 'angle3-val :lambda-list '(m))
(cl:defmethod angle3-val ((m <set_user_def_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:angle3-val is deprecated.  Use inspire_hand-srv:angle3 instead.")
  (angle3 m))

(cl:ensure-generic-function 'angle4-val :lambda-list '(m))
(cl:defmethod angle4-val ((m <set_user_def_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:angle4-val is deprecated.  Use inspire_hand-srv:angle4 instead.")
  (angle4 m))

(cl:ensure-generic-function 'angle5-val :lambda-list '(m))
(cl:defmethod angle5-val ((m <set_user_def_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:angle5-val is deprecated.  Use inspire_hand-srv:angle5 instead.")
  (angle5 m))

(cl:ensure-generic-function 'k-val :lambda-list '(m))
(cl:defmethod k-val ((m <set_user_def_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:k-val is deprecated.  Use inspire_hand-srv:k instead.")
  (k m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_user_def_angle-request>) ostream)
  "Serializes a message object of type '<set_user_def_angle-request>"
  (cl:let* ((signed (cl:slot-value msg 'angle0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angle1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angle2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angle3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angle4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angle5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'k)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_user_def_angle-request>) istream)
  "Deserializes a message object of type '<set_user_def_angle-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'k) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_user_def_angle-request>)))
  "Returns string type for a service object of type '<set_user_def_angle-request>"
  "inspire_hand/set_user_def_angleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_user_def_angle-request)))
  "Returns string type for a service object of type 'set_user_def_angle-request"
  "inspire_hand/set_user_def_angleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_user_def_angle-request>)))
  "Returns md5sum for a message object of type '<set_user_def_angle-request>"
  "15586ac6795c92bb925e681bde9775c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_user_def_angle-request)))
  "Returns md5sum for a message object of type 'set_user_def_angle-request"
  "15586ac6795c92bb925e681bde9775c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_user_def_angle-request>)))
  "Returns full string definition for message of type '<set_user_def_angle-request>"
  (cl:format cl:nil "int32 angle0~%int32 angle1~%int32 angle2~%int32 angle3~%int32 angle4~%int32 angle5~%int32 k~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_user_def_angle-request)))
  "Returns full string definition for message of type 'set_user_def_angle-request"
  (cl:format cl:nil "int32 angle0~%int32 angle1~%int32 angle2~%int32 angle3~%int32 angle4~%int32 angle5~%int32 k~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_user_def_angle-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_user_def_angle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_user_def_angle-request
    (cl:cons ':angle0 (angle0 msg))
    (cl:cons ':angle1 (angle1 msg))
    (cl:cons ':angle2 (angle2 msg))
    (cl:cons ':angle3 (angle3 msg))
    (cl:cons ':angle4 (angle4 msg))
    (cl:cons ':angle5 (angle5 msg))
    (cl:cons ':k (k msg))
))
;//! \htmlinclude set_user_def_angle-response.msg.html

(cl:defclass <set_user_def_angle-response> (roslisp-msg-protocol:ros-message)
  ((angle_accepted
    :reader angle_accepted
    :initarg :angle_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_user_def_angle-response (<set_user_def_angle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_user_def_angle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_user_def_angle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_user_def_angle-response> is deprecated: use inspire_hand-srv:set_user_def_angle-response instead.")))

(cl:ensure-generic-function 'angle_accepted-val :lambda-list '(m))
(cl:defmethod angle_accepted-val ((m <set_user_def_angle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:angle_accepted-val is deprecated.  Use inspire_hand-srv:angle_accepted instead.")
  (angle_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_user_def_angle-response>) ostream)
  "Serializes a message object of type '<set_user_def_angle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'angle_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_user_def_angle-response>) istream)
  "Deserializes a message object of type '<set_user_def_angle-response>"
    (cl:setf (cl:slot-value msg 'angle_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_user_def_angle-response>)))
  "Returns string type for a service object of type '<set_user_def_angle-response>"
  "inspire_hand/set_user_def_angleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_user_def_angle-response)))
  "Returns string type for a service object of type 'set_user_def_angle-response"
  "inspire_hand/set_user_def_angleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_user_def_angle-response>)))
  "Returns md5sum for a message object of type '<set_user_def_angle-response>"
  "15586ac6795c92bb925e681bde9775c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_user_def_angle-response)))
  "Returns md5sum for a message object of type 'set_user_def_angle-response"
  "15586ac6795c92bb925e681bde9775c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_user_def_angle-response>)))
  "Returns full string definition for message of type '<set_user_def_angle-response>"
  (cl:format cl:nil "bool angle_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_user_def_angle-response)))
  "Returns full string definition for message of type 'set_user_def_angle-response"
  (cl:format cl:nil "bool angle_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_user_def_angle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_user_def_angle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_user_def_angle-response
    (cl:cons ':angle_accepted (angle_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_user_def_angle)))
  'set_user_def_angle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_user_def_angle)))
  'set_user_def_angle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_user_def_angle)))
  "Returns string type for a service object of type '<set_user_def_angle>"
  "inspire_hand/set_user_def_angle")