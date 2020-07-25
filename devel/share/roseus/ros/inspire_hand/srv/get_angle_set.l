;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_angle_set)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_angle_set (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_ANGLE_SET")
  (make-package "INSPIRE_HAND::GET_ANGLE_SET"))
(unless (find-package "INSPIRE_HAND::GET_ANGLE_SETREQUEST")
  (make-package "INSPIRE_HAND::GET_ANGLE_SETREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_ANGLE_SETRESPONSE")
  (make-package "INSPIRE_HAND::GET_ANGLE_SETRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_angle_setRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_angle_setRequest
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

(defclass inspire_hand::get_angle_setResponse
  :super ros::object
  :slots (_setangle ))

(defmethod inspire_hand::get_angle_setResponse
  (:init
   (&key
    ((:setangle __setangle) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _setangle __setangle)
   self)
  (:setangle
   (&optional __setangle)
   (if __setangle (setq _setangle __setangle)) _setangle)
  (:serialization-length
   ()
   (+
    ;; float32[6] _setangle
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _setangle
     (dotimes (i 6)
       (sys::poke (elt _setangle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _setangle
   (dotimes (i (length _setangle))
     (setf (elt _setangle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_angle_set
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_angle_set :md5sum-) "9345778c384982b35dad72748c701694")
(setf (get inspire_hand::get_angle_set :datatype-) "inspire_hand/get_angle_set")
(setf (get inspire_hand::get_angle_set :request) inspire_hand::get_angle_setRequest)
(setf (get inspire_hand::get_angle_set :response) inspire_hand::get_angle_setResponse)

(defmethod inspire_hand::get_angle_setRequest
  (:response () (instance inspire_hand::get_angle_setResponse :init)))

(setf (get inspire_hand::get_angle_setRequest :md5sum-) "9345778c384982b35dad72748c701694")
(setf (get inspire_hand::get_angle_setRequest :datatype-) "inspire_hand/get_angle_setRequest")
(setf (get inspire_hand::get_angle_setRequest :definition-)
      "---
float32[6] setangle
")

(setf (get inspire_hand::get_angle_setResponse :md5sum-) "9345778c384982b35dad72748c701694")
(setf (get inspire_hand::get_angle_setResponse :datatype-) "inspire_hand/get_angle_setResponse")
(setf (get inspire_hand::get_angle_setResponse :definition-)
      "---
float32[6] setangle
")



(provide :inspire_hand/get_angle_set "9345778c384982b35dad72748c701694")


