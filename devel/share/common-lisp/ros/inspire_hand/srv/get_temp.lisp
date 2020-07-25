; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude get_temp-request.msg.html

(cl:defclass <get_temp-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_temp-request (<get_temp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_temp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_temp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_temp-request> is deprecated: use inspire_hand-srv:get_temp-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_temp-request>) ostream)
  "Serializes a message object of type '<get_temp-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_temp-request>) istream)
  "Deserializes a message object of type '<get_temp-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_temp-request>)))
  "Returns string type for a service object of type '<get_temp-request>"
  "inspire_hand/get_tempRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_temp-request)))
  "Returns string type for a service object of type 'get_temp-request"
  "inspire_hand/get_tempRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_temp-request>)))
  "Returns md5sum for a message object of type '<get_temp-request>"
  "faddf0cc102ec4c0d38aeffe0b8b6296")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_temp-request)))
  "Returns md5sum for a message object of type 'get_temp-request"
  "faddf0cc102ec4c0d38aeffe0b8b6296")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_temp-request>)))
  "Returns full string definition for message of type '<get_temp-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_temp-request)))
  "Returns full string definition for message of type 'get_temp-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_temp-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_temp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_temp-request
))
;//! \htmlinclude get_temp-response.msg.html

(cl:defclass <get_temp-response> (roslisp-msg-protocol:ros-message)
  ((tempvalue
    :reader tempvalue
    :initarg :tempvalue
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass get_temp-response (<get_temp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_temp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_temp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_temp-response> is deprecated: use inspire_hand-srv:get_temp-response instead.")))

(cl:ensure-generic-function 'tempvalue-val :lambda-list '(m))
(cl:defmethod tempvalue-val ((m <get_temp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:tempvalue-val is deprecated.  Use inspire_hand-srv:tempvalue instead.")
  (tempvalue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_temp-response>) ostream)
  "Serializes a message object of type '<get_temp-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'tempvalue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_temp-response>) istream)
  "Deserializes a message object of type '<get_temp-response>"
  (cl:setf (cl:slot-value msg 'tempvalue) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'tempvalue)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_temp-response>)))
  "Returns string type for a service object of type '<get_temp-response>"
  "inspire_hand/get_tempResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_temp-response)))
  "Returns string type for a service object of type 'get_temp-response"
  "inspire_hand/get_tempResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_temp-response>)))
  "Returns md5sum for a message object of type '<get_temp-response>"
  "faddf0cc102ec4c0d38aeffe0b8b6296")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_temp-response)))
  "Returns md5sum for a message object of type 'get_temp-response"
  "faddf0cc102ec4c0d38aeffe0b8b6296")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_temp-response>)))
  "Returns full string definition for message of type '<get_temp-response>"
  (cl:format cl:nil "float32[6] tempvalue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_temp-response)))
  "Returns full string definition for message of type 'get_temp-response"
  (cl:format cl:nil "float32[6] tempvalue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_temp-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'tempvalue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_temp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_temp-response
    (cl:cons ':tempvalue (tempvalue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_temp)))
  'get_temp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_temp)))
  'get_temp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_temp)))
  "Returns string type for a service object of type '<get_temp>"
  "inspire_hand/get_temp")