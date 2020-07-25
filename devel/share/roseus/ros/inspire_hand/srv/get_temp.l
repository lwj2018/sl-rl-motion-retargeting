;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_temp)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_temp (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_TEMP")
  (make-package "INSPIRE_HAND::GET_TEMP"))
(unless (find-package "INSPIRE_HAND::GET_TEMPREQUEST")
  (make-package "INSPIRE_HAND::GET_TEMPREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_TEMPRESPONSE")
  (make-package "INSPIRE_HAND::GET_TEMPRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_tempRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_tempRequest
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

(defclass inspire_hand::get_tempResponse
  :super ros::object
  :slots (_tempvalue ))

(defmethod inspire_hand::get_tempResponse
  (:init
   (&key
    ((:tempvalue __tempvalue) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _tempvalue __tempvalue)
   self)
  (:tempvalue
   (&optional __tempvalue)
   (if __tempvalue (setq _tempvalue __tempvalue)) _tempvalue)
  (:serialization-length
   ()
   (+
    ;; float32[6] _tempvalue
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _tempvalue
     (dotimes (i 6)
       (sys::poke (elt _tempvalue i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _tempvalue
   (dotimes (i (length _tempvalue))
     (setf (elt _tempvalue i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_temp
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_temp :md5sum-) "faddf0cc102ec4c0d38aeffe0b8b6296")
(setf (get inspire_hand::get_temp :datatype-) "inspire_hand/get_temp")
(setf (get inspire_hand::get_temp :request) inspire_hand::get_tempRequest)
(setf (get inspire_hand::get_temp :response) inspire_hand::get_tempResponse)

(defmethod inspire_hand::get_tempRequest
  (:response () (instance inspire_hand::get_tempResponse :init)))

(setf (get inspire_hand::get_tempRequest :md5sum-) "faddf0cc102ec4c0d38aeffe0b8b6296")
(setf (get inspire_hand::get_tempRequest :datatype-) "inspire_hand/get_tempRequest")
(setf (get inspire_hand::get_tempRequest :definition-)
      "---
float32[6] tempvalue
")

(setf (get inspire_hand::get_tempResponse :md5sum-) "faddf0cc102ec4c0d38aeffe0b8b6296")
(setf (get inspire_hand::get_tempResponse :datatype-) "inspire_hand/get_tempResponse")
(setf (get inspire_hand::get_tempResponse :definition-)
      "---
float32[6] tempvalue
")



(provide :inspire_hand/get_temp "faddf0cc102ec4c0d38aeffe0b8b6296")


