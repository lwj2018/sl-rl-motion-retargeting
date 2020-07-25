; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_id-request.msg.html

(cl:defclass <set_id-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass set_id-request (<set_id-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_id-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_id-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_id-request> is deprecated: use inspire_hand-srv:set_id-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <set_id-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:id-val is deprecated.  Use inspire_hand-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_id-request>) ostream)
  "Serializes a message object of type '<set_id-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_id-request>) istream)
  "Deserializes a message object of type '<set_id-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_id-request>)))
  "Returns string type for a service object of type '<set_id-request>"
  "inspire_hand/set_idRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_id-request)))
  "Returns string type for a service object of type 'set_id-request"
  "inspire_hand/set_idRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_id-request>)))
  "Returns md5sum for a message object of type '<set_id-request>"
  "5d26ecd99832c8b42f5065ef1190a622")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_id-request)))
  "Returns md5sum for a message object of type 'set_id-request"
  "5d26ecd99832c8b42f5065ef1190a622")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_id-request>)))
  "Returns full string definition for message of type '<set_id-request>"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_id-request)))
  "Returns full string definition for message of type 'set_id-request"
  (cl:format cl:nil "int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_id-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_id-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_id-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude set_id-response.msg.html

(cl:defclass <set_id-response> (roslisp-msg-protocol:ros-message)
  ((idgrab
    :reader idgrab
    :initarg :idgrab
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_id-response (<set_id-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_id-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_id-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_id-response> is deprecated: use inspire_hand-srv:set_id-response instead.")))

(cl:ensure-generic-function 'idgrab-val :lambda-list '(m))
(cl:defmethod idgrab-val ((m <set_id-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:idgrab-val is deprecated.  Use inspire_hand-srv:idgrab instead.")
  (idgrab m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_id-response>) ostream)
  "Serializes a message object of type '<set_id-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'idgrab) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_id-response>) istream)
  "Deserializes a message object of type '<set_id-response>"
    (cl:setf (cl:slot-value msg 'idgrab) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_id-response>)))
  "Returns string type for a service object of type '<set_id-response>"
  "inspire_hand/set_idResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_id-response)))
  "Returns string type for a service object of type 'set_id-response"
  "inspire_hand/set_idResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_id-response>)))
  "Returns md5sum for a message object of type '<set_id-response>"
  "5d26ecd99832c8b42f5065ef1190a622")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_id-response)))
  "Returns md5sum for a message object of type 'set_id-response"
  "5d26ecd99832c8b42f5065ef1190a622")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_id-response>)))
  "Returns full string definition for message of type '<set_id-response>"
  (cl:format cl:nil "bool idgrab~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_id-response)))
  "Returns full string definition for message of type 'set_id-response"
  (cl:format cl:nil "bool idgrab~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_id-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_id-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_id-response
    (cl:cons ':idgrab (idgrab msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_id)))
  'set_id-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_id)))
  'set_id-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_id)))
  "Returns string type for a service object of type '<set_id>"
  "inspire_hand/set_id")