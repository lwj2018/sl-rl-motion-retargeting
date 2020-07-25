; Auto-generated. Do not edit!


(cl:in-package inspire_hand-srv)


;//! \htmlinclude get_current-request.msg.html

(cl:defclass <get_current-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_current-request (<get_current-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_current-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_current-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_current-request> is deprecated: use inspire_hand-srv:get_current-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_current-request>) ostream)
  "Serializes a message object of type '<get_current-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_current-request>) istream)
  "Deserializes a message object of type '<get_current-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_current-request>)))
  "Returns string type for a service object of type '<get_current-request>"
  "inspire_hand/get_currentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_current-request)))
  "Returns string type for a service object of type 'get_current-request"
  "inspire_hand/get_currentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_current-request>)))
  "Returns md5sum for a message object of type '<get_current-request>"
  "11d573dfe70ac25437cf58ad00cf741d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_current-request)))
  "Returns md5sum for a message object of type 'get_current-request"
  "11d573dfe70ac25437cf58ad00cf741d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_current-request>)))
  "Returns full string definition for message of type '<get_current-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_current-request)))
  "Returns full string definition for message of type 'get_current-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_current-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_current-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_current-request
))
;//! \htmlinclude get_current-response.msg.html

(cl:defclass <get_current-response> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass get_current-response (<get_current-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_current-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_current-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inspire_hand-srv:<get_current-response> is deprecated: use inspire_hand-srv:get_current-response instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <get_current-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inspire_hand-srv:current-val is deprecated.  Use inspire_hand-srv:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_current-response>) ostream)
  "Serializes a message object of type '<get_current-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'current))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_current-response>) istream)
  "Deserializes a message object of type '<get_current-response>"
  (cl:setf (cl:slot-value msg 'current) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'current)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_current-response>)))
  "Returns string type for a service object of type '<get_current-response>"
  "inspire_hand/get_currentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_current-response)))
  "Returns string type for a service object of type 'get_current-response"
  "inspire_hand/get_currentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_current-response>)))
  "Returns md5sum for a message object of type '<get_current-response>"
  "11d573dfe70ac25437cf58ad00cf741d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_current-response)))
  "Returns md5sum for a message object of type 'get_current-response"
  "11d573dfe70ac25437cf58ad00cf741d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_current-response>)))
  "Returns full string definition for message of type '<get_current-response>"
  (cl:format cl:nil "float32[6] current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_current-response)))
  "Returns full string definition for message of type 'get_current-response"
  (cl:format cl:nil "float32[6] current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_current-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'current) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_current-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_current-response
    (cl:cons ':current (current msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_current)))
  'get_current-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_current)))
  'get_current-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_current)))
  "Returns string type for a service object of type '<get_current>"
  "inspire_hand/get_current")