;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_pos_set)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_pos_set (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_POS_SET")
  (make-package "INSPIRE_HAND::GET_POS_SET"))
(unless (find-package "INSPIRE_HAND::GET_POS_SETREQUEST")
  (make-package "INSPIRE_HAND::GET_POS_SETREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_POS_SETRESPONSE")
  (make-package "INSPIRE_HAND::GET_POS_SETRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_pos_setRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_pos_setRequest
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

(defclass inspire_hand::get_pos_setResponse
  :super ros::object
  :slots (_setpos ))

(defmethod inspire_hand::get_pos_setResponse
  (:init
   (&key
    ((:setpos __setpos) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _setpos __setpos)
   self)
  (:setpos
   (&optional __setpos)
   (if __setpos (setq _setpos __setpos)) _setpos)
  (:serialization-length
   ()
   (+
    ;; float32[6] _setpos
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _setpos
     (dotimes (i 6)
       (sys::poke (elt _setpos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _setpos
   (dotimes (i (length _setpos))
     (setf (elt _setpos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_pos_set
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_pos_set :md5sum-) "cffb9069f96661e23c6011a89561b5a1")
(setf (get inspire_hand::get_pos_set :datatype-) "inspire_hand/get_pos_set")
(setf (get inspire_hand::get_pos_set :request) inspire_hand::get_pos_setRequest)
(setf (get inspire_hand::get_pos_set :response) inspire_hand::get_pos_setResponse)

(defmethod inspire_hand::get_pos_setRequest
  (:response () (instance inspire_hand::get_pos_setResponse :init)))

(setf (get inspire_hand::get_pos_setRequest :md5sum-) "cffb9069f96661e23c6011a89561b5a1")
(setf (get inspire_hand::get_pos_setRequest :datatype-) "inspire_hand/get_pos_setRequest")
(setf (get inspire_hand::get_pos_setRequest :definition-)
      "---
float32[6] setpos
")

(setf (get inspire_hand::get_pos_setResponse :md5sum-) "cffb9069f96661e23c6011a89561b5a1")
(setf (get inspire_hand::get_pos_setResponse :datatype-) "inspire_hand/get_pos_setResponse")
(setf (get inspire_hand::get_pos_setResponse :definition-)
      "---
float32[6] setpos
")



(provide :inspire_hand/get_pos_set "cffb9069f96661e23c6011a89561b5a1")


