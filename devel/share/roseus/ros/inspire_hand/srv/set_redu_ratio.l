;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_redu_ratio)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_redu_ratio (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_REDU_RATIO")
  (make-package "INSPIRE_HAND::SET_REDU_RATIO"))
(unless (find-package "INSPIRE_HAND::SET_REDU_RATIOREQUEST")
  (make-package "INSPIRE_HAND::SET_REDU_RATIOREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_REDU_RATIORESPONSE")
  (make-package "INSPIRE_HAND::SET_REDU_RATIORESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_redu_ratioRequest
  :super ros::object
  :slots (_redu_ratio ))

(defmethod inspire_hand::set_redu_ratioRequest
  (:init
   (&key
    ((:redu_ratio __redu_ratio) 0)
    )
   (send-super :init)
   (setq _redu_ratio (round __redu_ratio))
   self)
  (:redu_ratio
   (&optional __redu_ratio)
   (if __redu_ratio (setq _redu_ratio __redu_ratio)) _redu_ratio)
  (:serialization-length
   ()
   (+
    ;; int32 _redu_ratio
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _redu_ratio
       (write-long _redu_ratio s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _redu_ratio
     (setq _redu_ratio (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_redu_ratioResponse
  :super ros::object
  :slots (_redu_ratiograb ))

(defmethod inspire_hand::set_redu_ratioResponse
  (:init
   (&key
    ((:redu_ratiograb __redu_ratiograb) nil)
    )
   (send-super :init)
   (setq _redu_ratiograb __redu_ratiograb)
   self)
  (:redu_ratiograb
   (&optional __redu_ratiograb)
   (if __redu_ratiograb (setq _redu_ratiograb __redu_ratiograb)) _redu_ratiograb)
  (:serialization-length
   ()
   (+
    ;; bool _redu_ratiograb
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _redu_ratiograb
       (if _redu_ratiograb (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _redu_ratiograb
     (setq _redu_ratiograb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_redu_ratio
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_redu_ratio :md5sum-) "e26114f6520fcbdb49066d390f601c35")
(setf (get inspire_hand::set_redu_ratio :datatype-) "inspire_hand/set_redu_ratio")
(setf (get inspire_hand::set_redu_ratio :request) inspire_hand::set_redu_ratioRequest)
(setf (get inspire_hand::set_redu_ratio :response) inspire_hand::set_redu_ratioResponse)

(defmethod inspire_hand::set_redu_ratioRequest
  (:response () (instance inspire_hand::set_redu_ratioResponse :init)))

(setf (get inspire_hand::set_redu_ratioRequest :md5sum-) "e26114f6520fcbdb49066d390f601c35")
(setf (get inspire_hand::set_redu_ratioRequest :datatype-) "inspire_hand/set_redu_ratioRequest")
(setf (get inspire_hand::set_redu_ratioRequest :definition-)
      "int32 redu_ratio
---
bool redu_ratiograb

")

(setf (get inspire_hand::set_redu_ratioResponse :md5sum-) "e26114f6520fcbdb49066d390f601c35")
(setf (get inspire_hand::set_redu_ratioResponse :datatype-) "inspire_hand/set_redu_ratioResponse")
(setf (get inspire_hand::set_redu_ratioResponse :definition-)
      "int32 redu_ratio
---
bool redu_ratiograb

")



(provide :inspire_hand/set_redu_ratio "e26114f6520fcbdb49066d390f601c35")


