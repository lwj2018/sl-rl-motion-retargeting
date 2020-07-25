;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::get_status)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'get_status (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::GET_STATUS")
  (make-package "INSPIRE_HAND::GET_STATUS"))
(unless (find-package "INSPIRE_HAND::GET_STATUSREQUEST")
  (make-package "INSPIRE_HAND::GET_STATUSREQUEST"))
(unless (find-package "INSPIRE_HAND::GET_STATUSRESPONSE")
  (make-package "INSPIRE_HAND::GET_STATUSRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::get_statusRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::get_statusRequest
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

(defclass inspire_hand::get_statusResponse
  :super ros::object
  :slots (_statusvalue ))

(defmethod inspire_hand::get_statusResponse
  (:init
   (&key
    ((:statusvalue __statusvalue) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _statusvalue __statusvalue)
   self)
  (:statusvalue
   (&optional __statusvalue)
   (if __statusvalue (setq _statusvalue __statusvalue)) _statusvalue)
  (:serialization-length
   ()
   (+
    ;; float32[6] _statusvalue
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _statusvalue
     (dotimes (i 6)
       (sys::poke (elt _statusvalue i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _statusvalue
   (dotimes (i (length _statusvalue))
     (setf (elt _statusvalue i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass inspire_hand::get_status
  :super ros::object
  :slots ())

(setf (get inspire_hand::get_status :md5sum-) "e2adc8174938c5ee3fd3a4e108c6b64f")
(setf (get inspire_hand::get_status :datatype-) "inspire_hand/get_status")
(setf (get inspire_hand::get_status :request) inspire_hand::get_statusRequest)
(setf (get inspire_hand::get_status :response) inspire_hand::get_statusResponse)

(defmethod inspire_hand::get_statusRequest
  (:response () (instance inspire_hand::get_statusResponse :init)))

(setf (get inspire_hand::get_statusRequest :md5sum-) "e2adc8174938c5ee3fd3a4e108c6b64f")
(setf (get inspire_hand::get_statusRequest :datatype-) "inspire_hand/get_statusRequest")
(setf (get inspire_hand::get_statusRequest :definition-)
      "---
float32[6] statusvalue
")

(setf (get inspire_hand::get_statusResponse :md5sum-) "e2adc8174938c5ee3fd3a4e108c6b64f")
(setf (get inspire_hand::get_statusResponse :datatype-) "inspire_hand/get_statusResponse")
(setf (get inspire_hand::get_statusResponse :definition-)
      "---
float32[6] statusvalue
")



(provide :inspire_hand/get_status "e2adc8174938c5ee3fd3a4e108c6b64f")


