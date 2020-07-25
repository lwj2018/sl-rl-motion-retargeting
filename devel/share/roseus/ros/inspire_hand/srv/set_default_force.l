;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_default_force)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_default_force (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_DEFAULT_FORCE")
  (make-package "INSPIRE_HAND::SET_DEFAULT_FORCE"))
(unless (find-package "INSPIRE_HAND::SET_DEFAULT_FORCEREQUEST")
  (make-package "INSPIRE_HAND::SET_DEFAULT_FORCEREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_DEFAULT_FORCERESPONSE")
  (make-package "INSPIRE_HAND::SET_DEFAULT_FORCERESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_default_forceRequest
  :super ros::object
  :slots (_force0 _force1 _force2 _force3 _force4 _force5 ))

(defmethod inspire_hand::set_default_forceRequest
  (:init
   (&key
    ((:force0 __force0) 0)
    ((:force1 __force1) 0)
    ((:force2 __force2) 0)
    ((:force3 __force3) 0)
    ((:force4 __force4) 0)
    ((:force5 __force5) 0)
    )
   (send-super :init)
   (setq _force0 (round __force0))
   (setq _force1 (round __force1))
   (setq _force2 (round __force2))
   (setq _force3 (round __force3))
   (setq _force4 (round __force4))
   (setq _force5 (round __force5))
   self)
  (:force0
   (&optional __force0)
   (if __force0 (setq _force0 __force0)) _force0)
  (:force1
   (&optional __force1)
   (if __force1 (setq _force1 __force1)) _force1)
  (:force2
   (&optional __force2)
   (if __force2 (setq _force2 __force2)) _force2)
  (:force3
   (&optional __force3)
   (if __force3 (setq _force3 __force3)) _force3)
  (:force4
   (&optional __force4)
   (if __force4 (setq _force4 __force4)) _force4)
  (:force5
   (&optional __force5)
   (if __force5 (setq _force5 __force5)) _force5)
  (:serialization-length
   ()
   (+
    ;; int32 _force0
    4
    ;; int32 _force1
    4
    ;; int32 _force2
    4
    ;; int32 _force3
    4
    ;; int32 _force4
    4
    ;; int32 _force5
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _force0
       (write-long _force0 s)
     ;; int32 _force1
       (write-long _force1 s)
     ;; int32 _force2
       (write-long _force2 s)
     ;; int32 _force3
       (write-long _force3 s)
     ;; int32 _force4
       (write-long _force4 s)
     ;; int32 _force5
       (write-long _force5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _force0
     (setq _force0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _force1
     (setq _force1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _force2
     (setq _force2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _force3
     (setq _force3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _force4
     (setq _force4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _force5
     (setq _force5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_default_forceResponse
  :super ros::object
  :slots (_default_force_accepted ))

(defmethod inspire_hand::set_default_forceResponse
  (:init
   (&key
    ((:default_force_accepted __default_force_accepted) nil)
    )
   (send-super :init)
   (setq _default_force_accepted __default_force_accepted)
   self)
  (:default_force_accepted
   (&optional __default_force_accepted)
   (if __default_force_accepted (setq _default_force_accepted __default_force_accepted)) _default_force_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _default_force_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _default_force_accepted
       (if _default_force_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _default_force_accepted
     (setq _default_force_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_default_force
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_default_force :md5sum-) "ee9e1744a60012332db6529559adffe2")
(setf (get inspire_hand::set_default_force :datatype-) "inspire_hand/set_default_force")
(setf (get inspire_hand::set_default_force :request) inspire_hand::set_default_forceRequest)
(setf (get inspire_hand::set_default_force :response) inspire_hand::set_default_forceResponse)

(defmethod inspire_hand::set_default_forceRequest
  (:response () (instance inspire_hand::set_default_forceResponse :init)))

(setf (get inspire_hand::set_default_forceRequest :md5sum-) "ee9e1744a60012332db6529559adffe2")
(setf (get inspire_hand::set_default_forceRequest :datatype-) "inspire_hand/set_default_forceRequest")
(setf (get inspire_hand::set_default_forceRequest :definition-)
      "int32 force0
int32 force1
int32 force2
int32 force3
int32 force4
int32 force5
---
bool default_force_accepted

")

(setf (get inspire_hand::set_default_forceResponse :md5sum-) "ee9e1744a60012332db6529559adffe2")
(setf (get inspire_hand::set_default_forceResponse :datatype-) "inspire_hand/set_default_forceResponse")
(setf (get inspire_hand::set_default_forceResponse :definition-)
      "int32 force0
int32 force1
int32 force2
int32 force3
int32 force4
int32 force5
---
bool default_force_accepted

")



(provide :inspire_hand/set_default_force "ee9e1744a60012332db6529559adffe2")


