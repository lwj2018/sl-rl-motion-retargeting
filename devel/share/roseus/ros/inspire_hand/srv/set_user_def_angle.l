;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_user_def_angle)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_user_def_angle (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_USER_DEF_ANGLE")
  (make-package "INSPIRE_HAND::SET_USER_DEF_ANGLE"))
(unless (find-package "INSPIRE_HAND::SET_USER_DEF_ANGLEREQUEST")
  (make-package "INSPIRE_HAND::SET_USER_DEF_ANGLEREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_USER_DEF_ANGLERESPONSE")
  (make-package "INSPIRE_HAND::SET_USER_DEF_ANGLERESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_user_def_angleRequest
  :super ros::object
  :slots (_angle0 _angle1 _angle2 _angle3 _angle4 _angle5 _k ))

(defmethod inspire_hand::set_user_def_angleRequest
  (:init
   (&key
    ((:angle0 __angle0) 0)
    ((:angle1 __angle1) 0)
    ((:angle2 __angle2) 0)
    ((:angle3 __angle3) 0)
    ((:angle4 __angle4) 0)
    ((:angle5 __angle5) 0)
    ((:k __k) 0)
    )
   (send-super :init)
   (setq _angle0 (round __angle0))
   (setq _angle1 (round __angle1))
   (setq _angle2 (round __angle2))
   (setq _angle3 (round __angle3))
   (setq _angle4 (round __angle4))
   (setq _angle5 (round __angle5))
   (setq _k (round __k))
   self)
  (:angle0
   (&optional __angle0)
   (if __angle0 (setq _angle0 __angle0)) _angle0)
  (:angle1
   (&optional __angle1)
   (if __angle1 (setq _angle1 __angle1)) _angle1)
  (:angle2
   (&optional __angle2)
   (if __angle2 (setq _angle2 __angle2)) _angle2)
  (:angle3
   (&optional __angle3)
   (if __angle3 (setq _angle3 __angle3)) _angle3)
  (:angle4
   (&optional __angle4)
   (if __angle4 (setq _angle4 __angle4)) _angle4)
  (:angle5
   (&optional __angle5)
   (if __angle5 (setq _angle5 __angle5)) _angle5)
  (:k
   (&optional __k)
   (if __k (setq _k __k)) _k)
  (:serialization-length
   ()
   (+
    ;; int32 _angle0
    4
    ;; int32 _angle1
    4
    ;; int32 _angle2
    4
    ;; int32 _angle3
    4
    ;; int32 _angle4
    4
    ;; int32 _angle5
    4
    ;; int32 _k
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _angle0
       (write-long _angle0 s)
     ;; int32 _angle1
       (write-long _angle1 s)
     ;; int32 _angle2
       (write-long _angle2 s)
     ;; int32 _angle3
       (write-long _angle3 s)
     ;; int32 _angle4
       (write-long _angle4 s)
     ;; int32 _angle5
       (write-long _angle5 s)
     ;; int32 _k
       (write-long _k s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _angle0
     (setq _angle0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle1
     (setq _angle1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle2
     (setq _angle2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle3
     (setq _angle3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle4
     (setq _angle4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle5
     (setq _angle5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _k
     (setq _k (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_user_def_angleResponse
  :super ros::object
  :slots (_angle_accepted ))

(defmethod inspire_hand::set_user_def_angleResponse
  (:init
   (&key
    ((:angle_accepted __angle_accepted) nil)
    )
   (send-super :init)
   (setq _angle_accepted __angle_accepted)
   self)
  (:angle_accepted
   (&optional __angle_accepted)
   (if __angle_accepted (setq _angle_accepted __angle_accepted)) _angle_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _angle_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _angle_accepted
       (if _angle_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _angle_accepted
     (setq _angle_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_user_def_angle
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_user_def_angle :md5sum-) "15586ac6795c92bb925e681bde9775c3")
(setf (get inspire_hand::set_user_def_angle :datatype-) "inspire_hand/set_user_def_angle")
(setf (get inspire_hand::set_user_def_angle :request) inspire_hand::set_user_def_angleRequest)
(setf (get inspire_hand::set_user_def_angle :response) inspire_hand::set_user_def_angleResponse)

(defmethod inspire_hand::set_user_def_angleRequest
  (:response () (instance inspire_hand::set_user_def_angleResponse :init)))

(setf (get inspire_hand::set_user_def_angleRequest :md5sum-) "15586ac6795c92bb925e681bde9775c3")
(setf (get inspire_hand::set_user_def_angleRequest :datatype-) "inspire_hand/set_user_def_angleRequest")
(setf (get inspire_hand::set_user_def_angleRequest :definition-)
      "int32 angle0
int32 angle1
int32 angle2
int32 angle3
int32 angle4
int32 angle5
int32 k
---
bool angle_accepted

")

(setf (get inspire_hand::set_user_def_angleResponse :md5sum-) "15586ac6795c92bb925e681bde9775c3")
(setf (get inspire_hand::set_user_def_angleResponse :datatype-) "inspire_hand/set_user_def_angleResponse")
(setf (get inspire_hand::set_user_def_angleResponse :definition-)
      "int32 angle0
int32 angle1
int32 angle2
int32 angle3
int32 angle4
int32 angle5
int32 k
---
bool angle_accepted

")



(provide :inspire_hand/set_user_def_angle "15586ac6795c92bb925e681bde9775c3")


