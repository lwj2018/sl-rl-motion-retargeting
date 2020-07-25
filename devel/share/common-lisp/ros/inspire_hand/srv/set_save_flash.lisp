; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_save_flash-request.msg.html

(cl:defclass <set_save_flash-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_save_flash-request (<set_save_flash-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_save_flash-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_save_flash-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_save_flash-request> is deprecated: use inspire_hand-srv:set_save_flash-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_save_flash-request>) ostream)
  "Serializes a message object of type '<set_save_flash-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_save_flash-request>) istream)
  "Deserializes a message object of type '<set_save_flash-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_save_flash-request>)))
  "Returns string type for a service object of type '<set_save_flash-request>"
  "inspire_hand/set_save_flashRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_save_flash-request)))
  "Returns string type for a service object of type 'set_save_flash-request"
  "inspire_hand/set_save_flashRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_save_flash-request>)))
  "Returns md5sum for a message object of type '<set_save_flash-request>"
  "ce29f0181fca97433252cab2ac73bda5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_save_flash-request)))
  "Returns md5sum for a message object of type 'set_save_flash-request"
  "ce29f0181fca97433252cab2ac73bda5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_save_flash-request>)))
  "Returns full string definition for message of type '<set_save_flash-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_save_flash-request)))
  "Returns full string definition for message of type 'set_save_flash-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_save_flash-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_save_flash-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_save_flash-request
))
;//! \htmlinclude set_save_flash-response.msg.html

(cl:defclass <set_save_flash-response> (roslisp-msg-protocol:ros-message)
  ((setsave_flash_accepted
    :reader setsave_flash_accepted
    :initarg :setsave_flash_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_save_flash-response (<set_save_flash-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_save_flash-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_save_flash-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_save_flash-response> is deprecated: use inspire_hand-srv:set_save_flash-response instead.")))

(cl:ensure-generic-function 'setsave_flash_accepted-val :lambda-list '(m))
(cl:defmethod setsave_flash_accepted-val ((m <set_save_flash-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:setsave_flash_accepted-val is deprecated.  Use inspire_hand-srv:setsave_flash_accepted instead.")
  (setsave_flash_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_save_flash-response>) ostream)
  "Serializes a message object of type '<set_save_flash-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setsave_flash_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_save_flash-response>) istream)
  "Deserializes a message object of type '<set_save_flash-response>"
    (cl:setf (cl:slot-value msg 'setsave_flash_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_save_flash-response>)))
  "Returns string type for a service object of type '<set_save_flash-response>"
  "inspire_hand/set_save_flashResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_save_flash-response)))
  "Returns string type for a service object of type 'set_save_flash-response"
  "inspire_hand/set_save_flashResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_save_flash-response>)))
  "Returns md5sum for a message object of type '<set_save_flash-response>"
  "ce29f0181fca97433252cab2ac73bda5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_save_flash-response)))
  "Returns md5sum for a message object of type 'set_save_flash-response"
  "ce29f0181fca97433252cab2ac73bda5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_save_flash-response>)))
  "Returns full string definition for message of type '<set_save_flash-response>"
  (cl:format cl:nil "bool setsave_flash_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_save_flash-response)))
  "Returns full string definition for message of type 'set_save_flash-response"
  (cl:format cl:nil "bool setsave_flash_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_save_flash-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_save_flash-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_save_flash-response
    (cl:cons ':setsave_flash_accepted (setsave_flash_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_save_flash)))
  'set_save_flash-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_save_flash)))
  'set_save_flash-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_save_flash)))
  "Returns string type for a service object of type '<set_save_flash>"
  "inspire_hand/set_save_flash")