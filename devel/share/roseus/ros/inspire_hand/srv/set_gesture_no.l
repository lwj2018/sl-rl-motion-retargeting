;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_gesture_no)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_gesture_no (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_GESTURE_NO")
  (make-package "INSPIRE_HAND::SET_GESTURE_NO"))
(unless (find-package "INSPIRE_HAND::SET_GESTURE_NOREQUEST")
  (make-package "INSPIRE_HAND::SET_GESTURE_NOREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_GESTURE_NORESPONSE")
  (make-package "INSPIRE_HAND::SET_GESTURE_NORESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_gesture_noRequest
  :super ros::object
  :slots (_gesture_no ))

(defmethod inspire_hand::set_gesture_noRequest
  (:init
   (&key
    ((:gesture_no __gesture_no) 0)
    )
   (send-super :init)
   (setq _gesture_no (round __gesture_no))
   self)
  (:gesture_no
   (&optional __gesture_no)
   (if __gesture_no (setq _gesture_no __gesture_no)) _gesture_no)
  (:serialization-length
   ()
   (+
    ;; int32 _gesture_no
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _gesture_no
       (write-long _gesture_no s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _gesture_no
     (setq _gesture_no (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_gesture_noResponse
  :super ros::object
  :slots (_gesture_nograb ))

(defmethod inspire_hand::set_gesture_noResponse
  (:init
   (&key
    ((:gesture_nograb __gesture_nograb) nil)
    )
   (send-super :init)
   (setq _gesture_nograb __gesture_nograb)
   self)
  (:gesture_nograb
   (&optional __gesture_nograb)
   (if __gesture_nograb (setq _gesture_nograb __gesture_nograb)) _gesture_nograb)
  (:serialization-length
   ()
   (+
    ;; bool _gesture_nograb
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _gesture_nograb
       (if _gesture_nograb (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _gesture_nograb
     (setq _gesture_nograb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_gesture_no
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_gesture_no :md5sum-) "1c20fda01ca101ed126c4cedf7ac0213")
(setf (get inspire_hand::set_gesture_no :datatype-) "inspire_hand/set_gesture_no")
(setf (get inspire_hand::set_gesture_no :request) inspire_hand::set_gesture_noRequest)
(setf (get inspire_hand::set_gesture_no :response) inspire_hand::set_gesture_noResponse)

(defmethod inspire_hand::set_gesture_noRequest
  (:response () (instance inspire_hand::set_gesture_noResponse :init)))

(setf (get inspire_hand::set_gesture_noRequest :md5sum-) "1c20fda01ca101ed126c4cedf7ac0213")
(setf (get inspire_hand::set_gesture_noRequest :datatype-) "inspire_hand/set_gesture_noRequest")
(setf (get inspire_hand::set_gesture_noRequest :definition-)
      "int32 gesture_no
---
bool gesture_nograb

")

(setf (get inspire_hand::set_gesture_noResponse :md5sum-) "1c20fda01ca101ed126c4cedf7ac0213")
(setf (get inspire_hand::set_gesture_noResponse :datatype-) "inspire_hand/set_gesture_noResponse")
(setf (get inspire_hand::set_gesture_noResponse :definition-)
      "int32 gesture_no
---
bool gesture_nograb

")



(provide :inspire_hand/set_gesture_no "1c20fda01ca101ed126c4cedf7ac0213")


