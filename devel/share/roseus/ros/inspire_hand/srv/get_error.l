;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_error)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_error (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_ERROR")
  (make-package "INSPIRE_HAND::GET_ERROR"))
(unless (find-package "INSPIRE_HAND::GET_ERRORREQUEST")
  (make-package "INSPIRE_HAND::GET_ERRORREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_ERRORRESPONSE")
  (make-package "INSPIRE_HAND::GET_ERRORRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_errorRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_errorRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass inspire_hand::get_errorResponse
  :super ros::object
  :slots (_errorvalue ))

(defmethod inspire_hand::get_errorResponse
  (:init
   (&key
    ((:errorvalue __errorvalue) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _errorvalue __errorvalue)
   self)
  (:errorvalue
   (&optional __errorvalue)
   (if __errorvalue (setq _errorvalue __errorvalue)) _errorvalue)
  (:serialization-length
   ()
   (+
    ;; float32[6] _errorvalue
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _errorvalue
     (dotimes (i 6)
       (sys::poke (elt _errorvalue i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _errorvalue
   (dotimes (i (length _errorvalue))
     (setf (elt _errorvalue i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_error
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_error :md5sum-) "a53f03f634bc27bd5924537063e03a53")
(setf (get inspire_hand::get_error :datatype-) "inspire_hand/get_error")
(setf (get inspire_hand::get_error :request) inspire_hand::get_errorRequest)
(setf (get inspire_hand::get_error :response) inspire_hand::get_errorResponse)

(defmethod inspire_hand::get_errorRequest
  (:response () (instance inspire_hand::get_errorResponse :init)))

(setf (get inspire_hand::get_errorRequest :md5sum-) "a53f03f634bc27bd5924537063e03a53")
(setf (get inspire_hand::get_errorRequest :datatype-) "inspire_hand/get_errorRequest")
(setf (get inspire_hand::get_errorRequest :definition-)
      "---
float32[6] errorvalue
")

(setf (get inspire_hand::get_errorResponse :md5sum-) "a53f03f634bc27bd5924537063e03a53")
(setf (get inspire_hand::get_errorResponse :datatype-) "inspire_hand/get_errorResponse")
(setf (get inspire_hand::get_errorResponse :definition-)
      "---
float32[6] errorvalue
")



(provide :inspire_hand/get_error "a53f03f634bc27bd5924537063e03a53")


