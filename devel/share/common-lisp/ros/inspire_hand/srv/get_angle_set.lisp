; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude get_angle_set-request.msg.html

(cl:defclass <get_angle_set-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_angle_set-request (<get_angle_set-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_angle_set-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_angle_set-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_angle_set-request> is deprecated: use inspire_hand-srv:get_angle_set-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_angle_set-request>) ostream)
  "Serializes a message object of type '<get_angle_set-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_angle_set-request>) istream)
  "Deserializes a message object of type '<get_angle_set-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_angle_set-request>)))
  "Returns string type for a service object of type '<get_angle_set-request>"
  "inspire_hand/get_angle_setRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_angle_set-request)))
  "Returns string type for a service object of type 'get_angle_set-request"
  "inspire_hand/get_angle_setRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_angle_set-request>)))
  "Returns md5sum for a message object of type '<get_angle_set-request>"
  "9345778c384982b35dad72748c701694")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_angle_set-request)))
  "Returns md5sum for a message object of type 'get_angle_set-request"
  "9345778c384982b35dad72748c701694")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_angle_set-request>)))
  "Returns full string definition for message of type '<get_angle_set-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_angle_set-request)))
  "Returns full string definition for message of type 'get_angle_set-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_angle_set-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_angle_set-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_angle_set-request
))
;//! \htmlinclude get_angle_set-response.msg.html

(cl:defclass <get_angle_set-response> (roslisp-msg-protocol:ros-message)
  ((setangle
    :reader setangle
    :initarg :setangle
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass get_angle_set-response (<get_angle_set-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_angle_set-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_angle_set-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_angle_set-response> is deprecated: use inspire_hand-srv:get_angle_set-response instead.")))

(cl:ensure-generic-function 'setangle-val :lambda-list '(m))
(cl:defmethod setangle-val ((m <get_angle_set-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:setangle-val is deprecated.  Use inspire_hand-srv:setangle instead.")
  (setangle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_angle_set-response>) ostream)
  "Serializes a message object of type '<get_angle_set-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'setangle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_angle_set-response>) istream)
  "Deserializes a message object of type '<get_angle_set-response>"
  (cl:setf (cl:slot-value msg 'setangle) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'setangle)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_angle_set-response>)))
  "Returns string type for a service object of type '<get_angle_set-response>"
  "inspire_hand/get_angle_setResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_angle_set-response)))
  "Returns string type for a service object of type 'get_angle_set-response"
  "inspire_hand/get_angle_setResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_angle_set-response>)))
  "Returns md5sum for a message object of type '<get_angle_set-response>"
  "9345778c384982b35dad72748c701694")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_angle_set-response)))
  "Returns md5sum for a message object of type 'get_angle_set-response"
  "9345778c384982b35dad72748c701694")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_angle_set-response>)))
  "Returns full string definition for message of type '<get_angle_set-response>"
  (cl:format cl:nil "float32[6] setangle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_angle_set-response)))
  "Returns full string definition for message of type 'get_angle_set-response"
  (cl:format cl:nil "float32[6] setangle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_angle_set-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'setangle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_angle_set-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_angle_set-response
    (cl:cons ':setangle (setangle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_angle_set)))
  'get_angle_set-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_angle_set)))
  'get_angle_set-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_angle_set)))
  "Returns string type for a service object of type '<get_angle_set>"
  "inspire_hand/get_angle_set")