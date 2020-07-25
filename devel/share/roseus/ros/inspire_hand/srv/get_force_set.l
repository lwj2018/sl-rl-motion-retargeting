;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_force_set)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_force_set (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_FORCE_SET")
  (make-package "INSPIRE_HAND::GET_FORCE_SET"))
(unless (find-package "INSPIRE_HAND::GET_FORCE_SETREQUEST")
  (make-package "INSPIRE_HAND::GET_FORCE_SETREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_FORCE_SETRESPONSE")
  (make-package "INSPIRE_HAND::GET_FORCE_SETRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_force_setRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_force_setRequest
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

(defclass inspire_hand::get_force_setResponse
  :super ros::object
  :slots (_setforce ))

(defmethod inspire_hand::get_force_setResponse
  (:init
   (&key
    ((:setforce __setforce) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _setforce __setforce)
   self)
  (:setforce
   (&optional __setforce)
   (if __setforce (setq _setforce __setforce)) _setforce)
  (:serialization-length
   ()
   (+
    ;; float32[6] _setforce
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _setforce
     (dotimes (i 6)
       (sys::poke (elt _setforce i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _setforce
   (dotimes (i (length _setforce))
     (setf (elt _setforce i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_force_set
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_force_set :md5sum-) "36dc498fde31a7d3735606fe581fda5c")
(setf (get inspire_hand::get_force_set :datatype-) "inspire_hand/get_force_set")
(setf (get inspire_hand::get_force_set :request) inspire_hand::get_force_setRequest)
(setf (get inspire_hand::get_force_set :response) inspire_hand::get_force_setResponse)

(defmethod inspire_hand::get_force_setRequest
  (:response () (instance inspire_hand::get_force_setResponse :init)))

(setf (get inspire_hand::get_force_setRequest :md5sum-) "36dc498fde31a7d3735606fe581fda5c")
(setf (get inspire_hand::get_force_setRequest :datatype-) "inspire_hand/get_force_setRequest")
(setf (get inspire_hand::get_force_setRequest :definition-)
      "---
float32[6] setforce
")

(setf (get inspire_hand::get_force_setResponse :md5sum-) "36dc498fde31a7d3735606fe581fda5c")
(setf (get inspire_hand::get_force_setResponse :datatype-) "inspire_hand/get_force_setResponse")
(setf (get inspire_hand::get_force_setResponse :definition-)
      "---
float32[6] setforce
")



(provide :inspire_hand/get_force_set "36dc498fde31a7d3735606fe581fda5c")


