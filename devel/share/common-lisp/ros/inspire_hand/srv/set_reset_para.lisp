; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_reset_para-request.msg.html

(cl:defclass <set_reset_para-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_reset_para-request (<set_reset_para-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_reset_para-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_reset_para-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_reset_para-request> is deprecated: use inspire_hand-srv:set_reset_para-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_reset_para-request>) ostream)
  "Serializes a message object of type '<set_reset_para-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_reset_para-request>) istream)
  "Deserializes a message object of type '<set_reset_para-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_reset_para-request>)))
  "Returns string type for a service object of type '<set_reset_para-request>"
  "inspire_hand/set_reset_paraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_reset_para-request)))
  "Returns string type for a service object of type 'set_reset_para-request"
  "inspire_hand/set_reset_paraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_reset_para-request>)))
  "Returns md5sum for a message object of type '<set_reset_para-request>"
  "09c8a3c1c50f7ff06e4871280095d7ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_reset_para-request)))
  "Returns md5sum for a message object of type 'set_reset_para-request"
  "09c8a3c1c50f7ff06e4871280095d7ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_reset_para-request>)))
  "Returns full string definition for message of type '<set_reset_para-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_reset_para-request)))
  "Returns full string definition for message of type 'set_reset_para-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_reset_para-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_reset_para-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_reset_para-request
))
;//! \htmlinclude set_reset_para-response.msg.html

(cl:defclass <set_reset_para-response> (roslisp-msg-protocol:ros-message)
  ((setreset_para_accepted
    :reader setreset_para_accepted
    :initarg :setreset_para_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_reset_para-response (<set_reset_para-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_reset_para-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_reset_para-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_reset_para-response> is deprecated: use inspire_hand-srv:set_reset_para-response instead.")))

(cl:ensure-generic-function 'setreset_para_accepted-val :lambda-list '(m))
(cl:defmethod setreset_para_accepted-val ((m <set_reset_para-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:setreset_para_accepted-val is deprecated.  Use inspire_hand-srv:setreset_para_accepted instead.")
  (setreset_para_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_reset_para-response>) ostream)
  "Serializes a message object of type '<set_reset_para-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setreset_para_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_reset_para-response>) istream)
  "Deserializes a message object of type '<set_reset_para-response>"
    (cl:setf (cl:slot-value msg 'setreset_para_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_reset_para-response>)))
  "Returns string type for a service object of type '<set_reset_para-response>"
  "inspire_hand/set_reset_paraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_reset_para-response)))
  "Returns string type for a service object of type 'set_reset_para-response"
  "inspire_hand/set_reset_paraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_reset_para-response>)))
  "Returns md5sum for a message object of type '<set_reset_para-response>"
  "09c8a3c1c50f7ff06e4871280095d7ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_reset_para-response)))
  "Returns md5sum for a message object of type 'set_reset_para-response"
  "09c8a3c1c50f7ff06e4871280095d7ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_reset_para-response>)))
  "Returns full string definition for message of type '<set_reset_para-response>"
  (cl:format cl:nil "bool setreset_para_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_reset_para-response)))
  "Returns full string definition for message of type 'set_reset_para-response"
  (cl:format cl:nil "bool setreset_para_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_reset_para-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_reset_para-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_reset_para-response
    (cl:cons ':setreset_para_accepted (setreset_para_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_reset_para)))
  'set_reset_para-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_reset_para)))
  'set_reset_para-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_reset_para)))
  "Returns string type for a service object of type '<set_reset_para>"
  "inspire_hand/set_reset_para")