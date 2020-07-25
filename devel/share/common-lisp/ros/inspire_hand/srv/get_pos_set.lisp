; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude get_pos_set-request.msg.html

(cl:defclass <get_pos_set-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_pos_set-request (<get_pos_set-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_pos_set-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_pos_set-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_pos_set-request> is deprecated: use inspire_hand-srv:get_pos_set-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_pos_set-request>) ostream)
  "Serializes a message object of type '<get_pos_set-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_pos_set-request>) istream)
  "Deserializes a message object of type '<get_pos_set-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_pos_set-request>)))
  "Returns string type for a service object of type '<get_pos_set-request>"
  "inspire_hand/get_pos_setRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pos_set-request)))
  "Returns string type for a service object of type 'get_pos_set-request"
  "inspire_hand/get_pos_setRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_pos_set-request>)))
  "Returns md5sum for a message object of type '<get_pos_set-request>"
  "cffb9069f96661e23c6011a89561b5a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_pos_set-request)))
  "Returns md5sum for a message object of type 'get_pos_set-request"
  "cffb9069f96661e23c6011a89561b5a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_pos_set-request>)))
  "Returns full string definition for message of type '<get_pos_set-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_pos_set-request)))
  "Returns full string definition for message of type 'get_pos_set-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_pos_set-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_pos_set-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_pos_set-request
))
;//! \htmlinclude get_pos_set-response.msg.html

(cl:defclass <get_pos_set-response> (roslisp-msg-protocol:ros-message)
  ((setpos
    :reader setpos
    :initarg :setpos
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass get_pos_set-response (<get_pos_set-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_pos_set-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_pos_set-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_pos_set-response> is deprecated: use inspire_hand-srv:get_pos_set-response instead.")))

(cl:ensure-generic-function 'setpos-val :lambda-list '(m))
(cl:defmethod setpos-val ((m <get_pos_set-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:setpos-val is deprecated.  Use inspire_hand-srv:setpos instead.")
  (setpos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_pos_set-response>) ostream)
  "Serializes a message object of type '<get_pos_set-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'setpos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_pos_set-response>) istream)
  "Deserializes a message object of type '<get_pos_set-response>"
  (cl:setf (cl:slot-value msg 'setpos) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'setpos)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_pos_set-response>)))
  "Returns string type for a service object of type '<get_pos_set-response>"
  "inspire_hand/get_pos_setResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pos_set-response)))
  "Returns string type for a service object of type 'get_pos_set-response"
  "inspire_hand/get_pos_setResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_pos_set-response>)))
  "Returns md5sum for a message object of type '<get_pos_set-response>"
  "cffb9069f96661e23c6011a89561b5a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_pos_set-response)))
  "Returns md5sum for a message object of type 'get_pos_set-response"
  "cffb9069f96661e23c6011a89561b5a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_pos_set-response>)))
  "Returns full string definition for message of type '<get_pos_set-response>"
  (cl:format cl:nil "float32[6] setpos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_pos_set-response)))
  "Returns full string definition for message of type 'get_pos_set-response"
  (cl:format cl:nil "float32[6] setpos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_pos_set-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'setpos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_pos_set-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_pos_set-response
    (cl:cons ':setpos (setpos msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_pos_set)))
  'get_pos_set-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_pos_set)))
  'get_pos_set-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pos_set)))
  "Returns string type for a service object of type '<get_pos_set>"
  "inspire_hand/get_pos_set")