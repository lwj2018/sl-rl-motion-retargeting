; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_gesture_no-request.msg.html

(cl:defclass <set_gesture_no-request> (roslisp-msg-protocol:ros-message)
  ((gesture_no
    :reader gesture_no
    :initarg :gesture_no
    :type cl:integer
    :initform 0))
)

(cl:defclass set_gesture_no-request (<set_gesture_no-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_gesture_no-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_gesture_no-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_gesture_no-request> is deprecated: use inspire_hand-srv:set_gesture_no-request instead.")))

(cl:ensure-generic-function 'gesture_no-val :lambda-list '(m))
(cl:defmethod gesture_no-val ((m <set_gesture_no-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:gesture_no-val is deprecated.  Use inspire_hand-srv:gesture_no instead.")
  (gesture_no m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_gesture_no-request>) ostream)
  "Serializes a message object of type '<set_gesture_no-request>"
  (cl:let* ((signed (cl:slot-value msg 'gesture_no)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_gesture_no-request>) istream)
  "Deserializes a message object of type '<set_gesture_no-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gesture_no) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_gesture_no-request>)))
  "Returns string type for a service object of type '<set_gesture_no-request>"
  "inspire_hand/set_gesture_noRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gesture_no-request)))
  "Returns string type for a service object of type 'set_gesture_no-request"
  "inspire_hand/set_gesture_noRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_gesture_no-request>)))
  "Returns md5sum for a message object of type '<set_gesture_no-request>"
  "1c20fda01ca101ed126c4cedf7ac0213")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_gesture_no-request)))
  "Returns md5sum for a message object of type 'set_gesture_no-request"
  "1c20fda01ca101ed126c4cedf7ac0213")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_gesture_no-request>)))
  "Returns full string definition for message of type '<set_gesture_no-request>"
  (cl:format cl:nil "int32 gesture_no~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_gesture_no-request)))
  "Returns full string definition for message of type 'set_gesture_no-request"
  (cl:format cl:nil "int32 gesture_no~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_gesture_no-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_gesture_no-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_gesture_no-request
    (cl:cons ':gesture_no (gesture_no msg))
))
;//! \htmlinclude set_gesture_no-response.msg.html

(cl:defclass <set_gesture_no-response> (roslisp-msg-protocol:ros-message)
  ((gesture_nograb
    :reader gesture_nograb
    :initarg :gesture_nograb
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_gesture_no-response (<set_gesture_no-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_gesture_no-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_gesture_no-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_gesture_no-response> is deprecated: use inspire_hand-srv:set_gesture_no-response instead.")))

(cl:ensure-generic-function 'gesture_nograb-val :lambda-list '(m))
(cl:defmethod gesture_nograb-val ((m <set_gesture_no-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:gesture_nograb-val is deprecated.  Use inspire_hand-srv:gesture_nograb instead.")
  (gesture_nograb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_gesture_no-response>) ostream)
  "Serializes a message object of type '<set_gesture_no-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gesture_nograb) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_gesture_no-response>) istream)
  "Deserializes a message object of type '<set_gesture_no-response>"
    (cl:setf (cl:slot-value msg 'gesture_nograb) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_gesture_no-response>)))
  "Returns string type for a service object of type '<set_gesture_no-response>"
  "inspire_hand/set_gesture_noResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gesture_no-response)))
  "Returns string type for a service object of type 'set_gesture_no-response"
  "inspire_hand/set_gesture_noResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_gesture_no-response>)))
  "Returns md5sum for a message object of type '<set_gesture_no-response>"
  "1c20fda01ca101ed126c4cedf7ac0213")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_gesture_no-response)))
  "Returns md5sum for a message object of type 'set_gesture_no-response"
  "1c20fda01ca101ed126c4cedf7ac0213")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_gesture_no-response>)))
  "Returns full string definition for message of type '<set_gesture_no-response>"
  (cl:format cl:nil "bool gesture_nograb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_gesture_no-response)))
  "Returns full string definition for message of type 'set_gesture_no-response"
  (cl:format cl:nil "bool gesture_nograb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_gesture_no-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_gesture_no-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_gesture_no-response
    (cl:cons ':gesture_nograb (gesture_nograb msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_gesture_no)))
  'set_gesture_no-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_gesture_no)))
  'set_gesture_no-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gesture_no)))
  "Returns string type for a service object of type '<set_gesture_no>"
  "inspire_hand/set_gesture_no")