;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_force_act)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_force_act (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_FORCE_ACT")
  (make-package "INSPIRE_HAND::GET_FORCE_ACT"))
(unless (find-package "INSPIRE_HAND::GET_FORCE_ACTREQUEST")
  (make-package "INSPIRE_HAND::GET_FORCE_ACTREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_FORCE_ACTRESPONSE")
  (make-package "INSPIRE_HAND::GET_FORCE_ACTRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_force_actRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_force_actRequest
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

(defclass inspire_hand::get_force_actResponse
  :super ros::object
  :slots (_curforce ))

(defmethod inspire_hand::get_force_actResponse
  (:init
   (&key
    ((:curforce __curforce) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _curforce __curforce)
   self)
  (:curforce
   (&optional __curforce)
   (if __curforce (setq _curforce __curforce)) _curforce)
  (:serialization-length
   ()
   (+
    ;; float32[6] _curforce
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _curforce
     (dotimes (i 6)
       (sys::poke (elt _curforce i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _curforce
   (dotimes (i (length _curforce))
     (setf (elt _curforce i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_force_act
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_force_act :md5sum-) "70074285dbeda980356fefe582262f12")
(setf (get inspire_hand::get_force_act :datatype-) "inspire_hand/get_force_act")
(setf (get inspire_hand::get_force_act :request) inspire_hand::get_force_actRequest)
(setf (get inspire_hand::get_force_act :response) inspire_hand::get_force_actResponse)

(defmethod inspire_hand::get_force_actRequest
  (:response () (instance inspire_hand::get_force_actResponse :init)))

(setf (get inspire_hand::get_force_actRequest :md5sum-) "70074285dbeda980356fefe582262f12")
(setf (get inspire_hand::get_force_actRequest :datatype-) "inspire_hand/get_force_actRequest")
(setf (get inspire_hand::get_force_actRequest :definition-)
      "---
float32[6] curforce
")

(setf (get inspire_hand::get_force_actResponse :md5sum-) "70074285dbeda980356fefe582262f12")
(setf (get inspire_hand::get_force_actResponse :datatype-) "inspire_hand/get_force_actResponse")
(setf (get inspire_hand::get_force_actResponse :definition-)
      "---
float32[6] curforce
")



(provide :inspire_hand/get_force_act "70074285dbeda980356fefe582262f12")


