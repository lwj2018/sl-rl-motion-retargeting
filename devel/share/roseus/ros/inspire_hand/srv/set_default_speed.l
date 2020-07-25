;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_default_speed)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_default_speed (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_DEFAULT_SPEED")
  (make-package "INSPIRE_HAND::SET_DEFAULT_SPEED"))
(unless (find-package "INSPIRE_HAND::SET_DEFAULT_SPEEDREQUEST")
  (make-package "INSPIRE_HAND::SET_DEFAULT_SPEEDREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_DEFAULT_SPEEDRESPONSE")
  (make-package "INSPIRE_HAND::SET_DEFAULT_SPEEDRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_default_speedRequest
  :super ros::object
  :slots (_speed0 _speed1 _speed2 _speed3 _speed4 _speed5 ))

(defmethod inspire_hand::set_default_speedRequest
  (:init
   (&key
    ((:speed0 __speed0) 0)
    ((:speed1 __speed1) 0)
    ((:speed2 __speed2) 0)
    ((:speed3 __speed3) 0)
    ((:speed4 __speed4) 0)
    ((:speed5 __speed5) 0)
    )
   (send-super :init)
   (setq _speed0 (round __speed0))
   (setq _speed1 (round __speed1))
   (setq _speed2 (round __speed2))
   (setq _speed3 (round __speed3))
   (setq _speed4 (round __speed4))
   (setq _speed5 (round __speed5))
   self)
  (:speed0
   (&optional __speed0)
   (if __speed0 (setq _speed0 __speed0)) _speed0)
  (:speed1
   (&optional __speed1)
   (if __speed1 (setq _speed1 __speed1)) _speed1)
  (:speed2
   (&optional __speed2)
   (if __speed2 (setq _speed2 __speed2)) _speed2)
  (:speed3
   (&optional __speed3)
   (if __speed3 (setq _speed3 __speed3)) _speed3)
  (:speed4
   (&optional __speed4)
   (if __speed4 (setq _speed4 __speed4)) _speed4)
  (:speed5
   (&optional __speed5)
   (if __speed5 (setq _speed5 __speed5)) _speed5)
  (:serialization-length
   ()
   (+
    ;; int32 _speed0
    4
    ;; int32 _speed1
    4
    ;; int32 _speed2
    4
    ;; int32 _speed3
    4
    ;; int32 _speed4
    4
    ;; int32 _speed5
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _speed0
       (write-long _speed0 s)
     ;; int32 _speed1
       (write-long _speed1 s)
     ;; int32 _speed2
       (write-long _speed2 s)
     ;; int32 _speed3
       (write-long _speed3 s)
     ;; int32 _speed4
       (write-long _speed4 s)
     ;; int32 _speed5
       (write-long _speed5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _speed0
     (setq _speed0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed1
     (setq _speed1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed2
     (setq _speed2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed3
     (setq _speed3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed4
     (setq _speed4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed5
     (setq _speed5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_default_speedResponse
  :super ros::object
  :slots (_default_speed_accepted ))

(defmethod inspire_hand::set_default_speedResponse
  (:init
   (&key
    ((:default_speed_accepted __default_speed_accepted) nil)
    )
   (send-super :init)
   (setq _default_speed_accepted __default_speed_accepted)
   self)
  (:default_speed_accepted
   (&optional __default_speed_accepted)
   (if __default_speed_accepted (setq _default_speed_accepted __default_speed_accepted)) _default_speed_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _default_speed_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _default_speed_accepted
       (if _default_speed_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _default_speed_accepted
     (setq _default_speed_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_default_speed
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_default_speed :md5sum-) "66b301b7e9c65c6ecc5012db3efd1bc0")
(setf (get inspire_hand::set_default_speed :datatype-) "inspire_hand/set_default_speed")
(setf (get inspire_hand::set_default_speed :request) inspire_hand::set_default_speedRequest)
(setf (get inspire_hand::set_default_speed :response) inspire_hand::set_default_speedResponse)

(defmethod inspire_hand::set_default_speedRequest
  (:response () (instance inspire_hand::set_default_speedResponse :init)))

(setf (get inspire_hand::set_default_speedRequest :md5sum-) "66b301b7e9c65c6ecc5012db3efd1bc0")
(setf (get inspire_hand::set_default_speedRequest :datatype-) "inspire_hand/set_default_speedRequest")
(setf (get inspire_hand::set_default_speedRequest :definition-)
      "int32 speed0
int32 speed1
int32 speed2
int32 speed3
int32 speed4
int32 speed5
---
bool default_speed_accepted
")

(setf (get inspire_hand::set_default_speedResponse :md5sum-) "66b301b7e9c65c6ecc5012db3efd1bc0")
(setf (get inspire_hand::set_default_speedResponse :datatype-) "inspire_hand/set_default_speedResponse")
(setf (get inspire_hand::set_default_speedResponse :definition-)
      "int32 speed0
int32 speed1
int32 speed2
int32 speed3
int32 speed4
int32 speed5
---
bool default_speed_accepted
")



(provide :inspire_hand/set_default_speed "66b301b7e9c65c6ecc5012db3efd1bc0")


