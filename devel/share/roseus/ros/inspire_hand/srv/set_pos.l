;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_pos)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_pos (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_POS")
  (make-package "INSPIRE_HAND::SET_POS"))
(unless (find-package "INSPIRE_HAND::SET_POSREQUEST")
  (make-package "INSPIRE_HAND::SET_POSREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_POSRESPONSE")
  (make-package "INSPIRE_HAND::SET_POSRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_posRequest
  :super ros::object
  :slots (_pos0 _pos1 _pos2 _pos3 _pos4 _pos5 ))

(defmethod inspire_hand::set_posRequest
  (:init
   (&key
    ((:pos0 __pos0) 0)
    ((:pos1 __pos1) 0)
    ((:pos2 __pos2) 0)
    ((:pos3 __pos3) 0)
    ((:pos4 __pos4) 0)
    ((:pos5 __pos5) 0)
    )
   (send-super :init)
   (setq _pos0 (round __pos0))
   (setq _pos1 (round __pos1))
   (setq _pos2 (round __pos2))
   (setq _pos3 (round __pos3))
   (setq _pos4 (round __pos4))
   (setq _pos5 (round __pos5))
   self)
  (:pos0
   (&optional __pos0)
   (if __pos0 (setq _pos0 __pos0)) _pos0)
  (:pos1
   (&optional __pos1)
   (if __pos1 (setq _pos1 __pos1)) _pos1)
  (:pos2
   (&optional __pos2)
   (if __pos2 (setq _pos2 __pos2)) _pos2)
  (:pos3
   (&optional __pos3)
   (if __pos3 (setq _pos3 __pos3)) _pos3)
  (:pos4
   (&optional __pos4)
   (if __pos4 (setq _pos4 __pos4)) _pos4)
  (:pos5
   (&optional __pos5)
   (if __pos5 (setq _pos5 __pos5)) _pos5)
  (:serialization-length
   ()
   (+
    ;; int32 _pos0
    4
    ;; int32 _pos1
    4
    ;; int32 _pos2
    4
    ;; int32 _pos3
    4
    ;; int32 _pos4
    4
    ;; int32 _pos5
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pos0
       (write-long _pos0 s)
     ;; int32 _pos1
       (write-long _pos1 s)
     ;; int32 _pos2
       (write-long _pos2 s)
     ;; int32 _pos3
       (write-long _pos3 s)
     ;; int32 _pos4
       (write-long _pos4 s)
     ;; int32 _pos5
       (write-long _pos5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pos0
     (setq _pos0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos1
     (setq _pos1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos2
     (setq _pos2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos3
     (setq _pos3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos4
     (setq _pos4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos5
     (setq _pos5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_posResponse
  :super ros::object
  :slots (_pos_accepted ))

(defmethod inspire_hand::set_posResponse
  (:init
   (&key
    ((:pos_accepted __pos_accepted) nil)
    )
   (send-super :init)
   (setq _pos_accepted __pos_accepted)
   self)
  (:pos_accepted
   (&optional __pos_accepted)
   (if __pos_accepted (setq _pos_accepted __pos_accepted)) _pos_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _pos_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _pos_accepted
       (if _pos_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _pos_accepted
     (setq _pos_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_pos
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_pos :md5sum-) "469bce018568d1f214a0c5f75e89bf97")
(setf (get inspire_hand::set_pos :datatype-) "inspire_hand/set_pos")
(setf (get inspire_hand::set_pos :request) inspire_hand::set_posRequest)
(setf (get inspire_hand::set_pos :response) inspire_hand::set_posResponse)

(defmethod inspire_hand::set_posRequest
  (:response () (instance inspire_hand::set_posResponse :init)))

(setf (get inspire_hand::set_posRequest :md5sum-) "469bce018568d1f214a0c5f75e89bf97")
(setf (get inspire_hand::set_posRequest :datatype-) "inspire_hand/set_posRequest")
(setf (get inspire_hand::set_posRequest :definition-)
      "int32 pos0
int32 pos1
int32 pos2
int32 pos3
int32 pos4
int32 pos5
---
bool pos_accepted
")

(setf (get inspire_hand::set_posResponse :md5sum-) "469bce018568d1f214a0c5f75e89bf97")
(setf (get inspire_hand::set_posResponse :datatype-) "inspire_hand/set_posResponse")
(setf (get inspire_hand::set_posResponse :definition-)
      "int32 pos0
int32 pos1
int32 pos2
int32 pos3
int32 pos4
int32 pos5
---
bool pos_accepted
")



(provide :inspire_hand/set_pos "469bce018568d1f214a0c5f75e89bf97")


