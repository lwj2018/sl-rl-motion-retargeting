;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_current_limit)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_current_limit (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_CURRENT_LIMIT")
  (make-package "INSPIRE_HAND::SET_CURRENT_LIMIT"))
(unless (find-package "INSPIRE_HAND::SET_CURRENT_LIMITREQUEST")
  (make-package "INSPIRE_HAND::SET_CURRENT_LIMITREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_CURRENT_LIMITRESPONSE")
  (make-package "INSPIRE_HAND::SET_CURRENT_LIMITRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_current_limitRequest
  :super ros::object
  :slots (_current0 _current1 _current2 _current3 _current4 _current5 ))

(defmethod inspire_hand::set_current_limitRequest
  (:init
   (&key
    ((:current0 __current0) 0)
    ((:current1 __current1) 0)
    ((:current2 __current2) 0)
    ((:current3 __current3) 0)
    ((:current4 __current4) 0)
    ((:current5 __current5) 0)
    )
   (send-super :init)
   (setq _current0 (round __current0))
   (setq _current1 (round __current1))
   (setq _current2 (round __current2))
   (setq _current3 (round __current3))
   (setq _current4 (round __current4))
   (setq _current5 (round __current5))
   self)
  (:current0
   (&optional __current0)
   (if __current0 (setq _current0 __current0)) _current0)
  (:current1
   (&optional __current1)
   (if __current1 (setq _current1 __current1)) _current1)
  (:current2
   (&optional __current2)
   (if __current2 (setq _current2 __current2)) _current2)
  (:current3
   (&optional __current3)
   (if __current3 (setq _current3 __current3)) _current3)
  (:current4
   (&optional __current4)
   (if __current4 (setq _current4 __current4)) _current4)
  (:current5
   (&optional __current5)
   (if __current5 (setq _current5 __current5)) _current5)
  (:serialization-length
   ()
   (+
    ;; int32 _current0
    4
    ;; int32 _current1
    4
    ;; int32 _current2
    4
    ;; int32 _current3
    4
    ;; int32 _current4
    4
    ;; int32 _current5
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _current0
       (write-long _current0 s)
     ;; int32 _current1
       (write-long _current1 s)
     ;; int32 _current2
       (write-long _current2 s)
     ;; int32 _current3
       (write-long _current3 s)
     ;; int32 _current4
       (write-long _current4 s)
     ;; int32 _current5
       (write-long _current5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _current0
     (setq _current0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current1
     (setq _current1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current2
     (setq _current2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current3
     (setq _current3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current4
     (setq _current4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current5
     (setq _current5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_current_limitResponse
  :super ros::object
  :slots (_current_limit_accepted ))

(defmethod inspire_hand::set_current_limitResponse
  (:init
   (&key
    ((:current_limit_accepted __current_limit_accepted) nil)
    )
   (send-super :init)
   (setq _current_limit_accepted __current_limit_accepted)
   self)
  (:current_limit_accepted
   (&optional __current_limit_accepted)
   (if __current_limit_accepted (setq _current_limit_accepted __current_limit_accepted)) _current_limit_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _current_limit_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _current_limit_accepted
       (if _current_limit_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _current_limit_accepted
     (setq _current_limit_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_current_limit
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_current_limit :md5sum-) "422c9f6eddce4f2b83bdd05a0c49ffe4")
(setf (get inspire_hand::set_current_limit :datatype-) "inspire_hand/set_current_limit")
(setf (get inspire_hand::set_current_limit :request) inspire_hand::set_current_limitRequest)
(setf (get inspire_hand::set_current_limit :response) inspire_hand::set_current_limitResponse)

(defmethod inspire_hand::set_current_limitRequest
  (:response () (instance inspire_hand::set_current_limitResponse :init)))

(setf (get inspire_hand::set_current_limitRequest :md5sum-) "422c9f6eddce4f2b83bdd05a0c49ffe4")
(setf (get inspire_hand::set_current_limitRequest :datatype-) "inspire_hand/set_current_limitRequest")
(setf (get inspire_hand::set_current_limitRequest :definition-)
      "int32 current0
int32 current1
int32 current2
int32 current3
int32 current4
int32 current5
---
bool current_limit_accepted
")

(setf (get inspire_hand::set_current_limitResponse :md5sum-) "422c9f6eddce4f2b83bdd05a0c49ffe4")
(setf (get inspire_hand::set_current_limitResponse :datatype-) "inspire_hand/set_current_limitResponse")
(setf (get inspire_hand::set_current_limitResponse :definition-)
      "int32 current0
int32 current1
int32 current2
int32 current3
int32 current4
int32 current5
---
bool current_limit_accepted
")



(provide :inspire_hand/set_current_limit "422c9f6eddce4f2b83bdd05a0c49ffe4")


