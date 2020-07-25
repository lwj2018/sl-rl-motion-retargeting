;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_pos_act)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_pos_act (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_POS_ACT")
  (make-package "INSPIRE_HAND::GET_POS_ACT"))
(unless (find-package "INSPIRE_HAND::GET_POS_ACTREQUEST")
  (make-package "INSPIRE_HAND::GET_POS_ACTREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_POS_ACTRESPONSE")
  (make-package "INSPIRE_HAND::GET_POS_ACTRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_pos_actRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_pos_actRequest
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

(defclass inspire_hand::get_pos_actResponse
  :super ros::object
  :slots (_curpos ))

(defmethod inspire_hand::get_pos_actResponse
  (:init
   (&key
    ((:curpos __curpos) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _curpos __curpos)
   self)
  (:curpos
   (&optional __curpos)
   (if __curpos (setq _curpos __curpos)) _curpos)
  (:serialization-length
   ()
   (+
    ;; float32[6] _curpos
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _curpos
     (dotimes (i 6)
       (sys::poke (elt _curpos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _curpos
   (dotimes (i (length _curpos))
     (setf (elt _curpos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_pos_act
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_pos_act :md5sum-) "a70fb6e8637c623cad009e6d713de894")
(setf (get inspire_hand::get_pos_act :datatype-) "inspire_hand/get_pos_act")
(setf (get inspire_hand::get_pos_act :request) inspire_hand::get_pos_actRequest)
(setf (get inspire_hand::get_pos_act :response) inspire_hand::get_pos_actResponse)

(defmethod inspire_hand::get_pos_actRequest
  (:response () (instance inspire_hand::get_pos_actResponse :init)))

(setf (get inspire_hand::get_pos_actRequest :md5sum-) "a70fb6e8637c623cad009e6d713de894")
(setf (get inspire_hand::get_pos_actRequest :datatype-) "inspire_hand/get_pos_actRequest")
(setf (get inspire_hand::get_pos_actRequest :definition-)
      "---
float32[6] curpos

")

(setf (get inspire_hand::get_pos_actResponse :md5sum-) "a70fb6e8637c623cad009e6d713de894")
(setf (get inspire_hand::get_pos_actResponse :datatype-) "inspire_hand/get_pos_actResponse")
(setf (get inspire_hand::get_pos_actResponse :definition-)
      "---
float32[6] curpos

")



(provide :inspire_hand/get_pos_act "a70fb6e8637c623cad009e6d713de894")


