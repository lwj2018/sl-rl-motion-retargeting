; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude set_force_clb-request.msg.html

(cl:defclass <set_force_clb-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_force_clb-request (<set_force_clb-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_force_clb-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_force_clb-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_force_clb-request> is deprecated: use inspire_hand-srv:set_force_clb-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_force_clb-request>) ostream)
  "Serializes a message object of type '<set_force_clb-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_force_clb-request>) istream)
  "Deserializes a message object of type '<set_force_clb-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_force_clb-request>)))
  "Returns string type for a service object of type '<set_force_clb-request>"
  "inspire_hand/set_force_clbRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_force_clb-request)))
  "Returns string type for a service object of type 'set_force_clb-request"
  "inspire_hand/set_force_clbRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_force_clb-request>)))
  "Returns md5sum for a message object of type '<set_force_clb-request>"
  "1ed618c9431c8faa2d80a957bf7da809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_force_clb-request)))
  "Returns md5sum for a message object of type 'set_force_clb-request"
  "1ed618c9431c8faa2d80a957bf7da809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_force_clb-request>)))
  "Returns full string definition for message of type '<set_force_clb-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_force_clb-request)))
  "Returns full string definition for message of type 'set_force_clb-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_force_clb-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_force_clb-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_force_clb-request
))
;//! \htmlinclude set_force_clb-response.msg.html

(cl:defclass <set_force_clb-response> (roslisp-msg-protocol:ros-message)
  ((setforce_clb_accepted
    :reader setforce_clb_accepted
    :initarg :setforce_clb_accepted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_force_clb-response (<set_force_clb-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_force_clb-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_force_clb-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<set_force_clb-response> is deprecated: use inspire_hand-srv:set_force_clb-response instead.")))

(cl:ensure-generic-function 'setforce_clb_accepted-val :lambda-list '(m))
(cl:defmethod setforce_clb_accepted-val ((m <set_force_clb-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:setforce_clb_accepted-val is deprecated.  Use inspire_hand-srv:setforce_clb_accepted instead.")
  (setforce_clb_accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_force_clb-response>) ostream)
  "Serializes a message object of type '<set_force_clb-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setforce_clb_accepted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_force_clb-response>) istream)
  "Deserializes a message object of type '<set_force_clb-response>"
    (cl:setf (cl:slot-value msg 'setforce_clb_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_force_clb-response>)))
  "Returns string type for a service object of type '<set_force_clb-response>"
  "inspire_hand/set_force_clbResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_force_clb-response)))
  "Returns string type for a service object of type 'set_force_clb-response"
  "inspire_hand/set_force_clbResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_force_clb-response>)))
  "Returns md5sum for a message object of type '<set_force_clb-response>"
  "1ed618c9431c8faa2d80a957bf7da809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_force_clb-response)))
  "Returns md5sum for a message object of type 'set_force_clb-response"
  "1ed618c9431c8faa2d80a957bf7da809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_force_clb-response>)))
  "Returns full string definition for message of type '<set_force_clb-response>"
  (cl:format cl:nil "bool setforce_clb_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_force_clb-response)))
  "Returns full string definition for message of type 'set_force_clb-response"
  (cl:format cl:nil "bool setforce_clb_accepted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_force_clb-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_force_clb-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_force_clb-response
    (cl:cons ':setforce_clb_accepted (setforce_clb_accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_force_clb)))
  'set_force_clb-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_force_clb)))
  'set_force_clb-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_force_clb)))
  "Returns string type for a service object of type '<set_force_clb>"
  "inspire_hand/set_force_clb")