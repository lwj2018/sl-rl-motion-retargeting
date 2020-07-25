;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_current)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_current (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_CURRENT")
  (make-package "INSPIRE_HAND::GET_CURRENT"))
(unless (find-package "INSPIRE_HAND::GET_CURRENTREQUEST")
  (make-package "INSPIRE_HAND::GET_CURRENTREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_CURRENTRESPONSE")
  (make-package "INSPIRE_HAND::GET_CURRENTRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_currentRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_currentRequest
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

(defclass inspire_hand::get_currentResponse
  :super ros::object
  :slots (_current ))

(defmethod inspire_hand::get_currentResponse
  (:init
   (&key
    ((:current __current) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _current __current)
   self)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; float32[6] _current
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _current
     (dotimes (i 6)
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _current
   (dotimes (i (length _current))
     (setf (elt _current i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_current
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_current :md5sum-) "11d573dfe70ac25437cf58ad00cf741d")
(setf (get inspire_hand::get_current :datatype-) "inspire_hand/get_current")
(setf (get inspire_hand::get_current :request) inspire_hand::get_currentRequest)
(setf (get inspire_hand::get_current :response) inspire_hand::get_currentResponse)

(defmethod inspire_hand::get_currentRequest
  (:response () (instance inspire_hand::get_currentResponse :init)))

(setf (get inspire_hand::get_currentRequest :md5sum-) "11d573dfe70ac25437cf58ad00cf741d")
(setf (get inspire_hand::get_currentRequest :datatype-) "inspire_hand/get_currentRequest")
(setf (get inspire_hand::get_currentRequest :definition-)
      "---
float32[6] current
")

(setf (get inspire_hand::get_currentResponse :md5sum-) "11d573dfe70ac25437cf58ad00cf741d")
(setf (get inspire_hand::get_currentResponse :datatype-) "inspire_hand/get_currentResponse")
(setf (get inspire_hand::get_currentResponse :definition-)
      "---
float32[6] current
")



(provide :inspire_hand/get_current "11d573dfe70ac25437cf58ad00cf741d")


