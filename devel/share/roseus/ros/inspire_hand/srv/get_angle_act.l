;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_angle_act)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_angle_act (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_ANGLE_ACT")
  (make-package "INSPIRE_HAND::GET_ANGLE_ACT"))
(unless (find-package "INSPIRE_HAND::GET_ANGLE_ACTREQUEST")
  (make-package "INSPIRE_HAND::GET_ANGLE_ACTREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_ANGLE_ACTRESPONSE")
  (make-package "INSPIRE_HAND::GET_ANGLE_ACTRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_angle_actRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_angle_actRequest
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

(defclass inspire_hand::get_angle_actResponse
  :super ros::object
  :slots (_curangle ))

(defmethod inspire_hand::get_angle_actResponse
  (:init
   (&key
    ((:curangle __curangle) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _curangle __curangle)
   self)
  (:curangle
   (&optional __curangle)
   (if __curangle (setq _curangle __curangle)) _curangle)
  (:serialization-length
   ()
   (+
    ;; float32[6] _curangle
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _curangle
     (dotimes (i 6)
       (sys::poke (elt _curangle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _curangle
   (dotimes (i (length _curangle))
     (setf (elt _curangle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_angle_act
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_angle_act :md5sum-) "2329a3c808aea9d534c8a2279948da90")
(setf (get inspire_hand::get_angle_act :datatype-) "inspire_hand/get_angle_act")
(setf (get inspire_hand::get_angle_act :request) inspire_hand::get_angle_actRequest)
(setf (get inspire_hand::get_angle_act :response) inspire_hand::get_angle_actResponse)

(defmethod inspire_hand::get_angle_actRequest
  (:response () (instance inspire_hand::get_angle_actResponse :init)))

(setf (get inspire_hand::get_angle_actRequest :md5sum-) "2329a3c808aea9d534c8a2279948da90")
(setf (get inspire_hand::get_angle_actRequest :datatype-) "inspire_hand/get_angle_actRequest")
(setf (get inspire_hand::get_angle_actRequest :definition-)
      "---
float32[6] curangle

")

(setf (get inspire_hand::get_angle_actResponse :md5sum-) "2329a3c808aea9d534c8a2279948da90")
(setf (get inspire_hand::get_angle_actResponse :datatype-) "inspire_hand/get_angle_actResponse")
(setf (get inspire_hand::get_angle_actResponse :definition-)
      "---
float32[6] curangle

")



(provide :inspire_hand/get_angle_act "2329a3c808aea9d534c8a2279948da90")


