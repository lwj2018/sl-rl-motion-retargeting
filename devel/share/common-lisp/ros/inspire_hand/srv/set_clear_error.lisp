; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_clear_error-request.msg.html

(cl:defclass <set_clear_error-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_clear_error-request (<set_clear_error-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_clear_error-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_clear_error-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_clear_error-request> is deprecated: use inspire_hand-srv:set_clear_error-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_clear_error-request>) ostream)
  "Serializes a message object of type '<set_clear_error-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_clear_error-request>) istream)
  "Deserializes a message object of type '<set_clear_error-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_clear_error-request>)))
  "Returns string type for a service object of type '<set_clear_error-request>"
  "inspire_hand/set_clear_errorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_clear_error-request)))
  "Returns string type for a service object of type 'set_clear_error-request"
  "inspire_hand/set_clear_errorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_clear_error-request>)))
  "Returns md5sum for a message object of type '<set_clear_error-request>"
  "a7e6099bc802656c2632bf2a50f44b2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_clear_error-request)))
  "Returns md5sum for a message object of type 'set_clear_error-request"
  "a7e6099bc802656c2632bf2a50f44b2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_clear_error-request>)))
  "Returns full string definition for message of type '<set_clear_error-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_clear_error-request)))
  "Returns full string definition for message of type 'set_clear_error-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_clear_error-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_clear_error-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_clear_error-request
))
;//! \htmlinclude set_clear_error-response.msg.html

(cl:defclass <set_clear_error-response> (roslisp-msg-protocol:ros-message)
  ((setclear_error_accepted
    :reader setclear_error_accepted
    :initarg :setclear_error_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_clear_error-response (<set_clear_error-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_clear_error-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_clear_error-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_clear_error-response> is deprecated: use inspire_hand-srv:set_clear_error-response instead.")))

(cl:ensure-generic-function 'setclear_error_accepted-val :lambda-list '(m))
(cl:defmethod setclear_error_accepted-val ((m <set_clear_error-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:setclear_error_accepted-val is deprecated.  Use inspire_hand-srv:setclear_error_accepted instead.")
  (setclear_error_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_clear_error-response>) ostream)
  "Serializes a message object of type '<set_clear_error-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setclear_error_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_clear_error-response>) istream)
  "Deserializes a message object of type '<set_clear_error-response>"
    (cl:setf (cl:slot-value msg 'setclear_error_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_clear_error-response>)))
  "Returns string type for a service object of type '<set_clear_error-response>"
  "inspire_hand/set_clear_errorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_clear_error-response)))
  "Returns string type for a service object of type 'set_clear_error-response"
  "inspire_hand/set_clear_errorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_clear_error-response>)))
  "Returns md5sum for a message object of type '<set_clear_error-response>"
  "a7e6099bc802656c2632bf2a50f44b2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_clear_error-response)))
  "Returns md5sum for a message object of type 'set_clear_error-response"
  "a7e6099bc802656c2632bf2a50f44b2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_clear_error-response>)))
  "Returns full string definition for message of type '<set_clear_error-response>"
  (cl:format cl:nil "bool setclear_error_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_clear_error-response)))
  "Returns full string definition for message of type 'set_clear_error-response"
  (cl:format cl:nil "bool setclear_error_accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_clear_error-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_clear_error-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_clear_error-response
    (cl:cons ':setclear_error_accepted (setclear_error_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_clear_error)))
  'set_clear_error-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_clear_error)))
  'set_clear_error-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_clear_error)))
  "Returns string type for a service object of type '<set_clear_error>"
  "inspire_hand/set_clear_error")