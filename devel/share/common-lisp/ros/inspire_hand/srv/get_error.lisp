; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude get_error-request.msg.html

(cl:defclass <get_error-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_error-request (<get_error-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_error-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_error-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_error-request> is deprecated: use inspire_hand-srv:get_error-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_error-request>) ostream)
  "Serializes a message object of type '<get_error-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_error-request>) istream)
  "Deserializes a message object of type '<get_error-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_error-request>)))
  "Returns string type for a service object of type '<get_error-request>"
  "inspire_hand/get_errorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_error-request)))
  "Returns string type for a service object of type 'get_error-request"
  "inspire_hand/get_errorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_error-request>)))
  "Returns md5sum for a message object of type '<get_error-request>"
  "a53f03f634bc27bd5924537063e03a53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_error-request)))
  "Returns md5sum for a message object of type 'get_error-request"
  "a53f03f634bc27bd5924537063e03a53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_error-request>)))
  "Returns full string definition for message of type '<get_error-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_error-request)))
  "Returns full string definition for message of type 'get_error-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_error-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_error-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_error-request
))
;//! \htmlinclude get_error-response.msg.html

(cl:defclass <get_error-response> (roslisp-msg-protocol:ros-message)
  ((errorvalue
    :reader errorvalue
    :initarg :errorvalue
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass get_error-response (<get_error-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_error-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_error-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_error-response> is deprecated: use inspire_hand-srv:get_error-response instead.")))

(cl:ensure-generic-function 'errorvalue-val :lambda-list '(m))
(cl:defmethod errorvalue-val ((m <get_error-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:errorvalue-val is deprecated.  Use inspire_hand-srv:errorvalue instead.")
  (errorvalue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_error-response>) ostream)
  "Serializes a message object of type '<get_error-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'errorvalue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_error-response>) istream)
  "Deserializes a message object of type '<get_error-response>"
  (cl:setf (cl:slot-value msg 'errorvalue) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'errorvalue)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_error-response>)))
  "Returns string type for a service object of type '<get_error-response>"
  "inspire_hand/get_errorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_error-response)))
  "Returns string type for a service object of type 'get_error-response"
  "inspire_hand/get_errorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_error-response>)))
  "Returns md5sum for a message object of type '<get_error-response>"
  "a53f03f634bc27bd5924537063e03a53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_error-response)))
  "Returns md5sum for a message object of type 'get_error-response"
  "a53f03f634bc27bd5924537063e03a53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_error-response>)))
  "Returns full string definition for message of type '<get_error-response>"
  (cl:format cl:nil "float32[6] errorvalue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_error-response)))
  "Returns full string definition for message of type 'get_error-response"
  (cl:format cl:nil "float32[6] errorvalue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_error-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'errorvalue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_error-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_error-response
    (cl:cons ':errorvalue (errorvalue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_error)))
  'get_error-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_error)))
  'get_error-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_error)))
  "Returns string type for a service object of type '<get_error>"
  "inspire_hand/get_error")