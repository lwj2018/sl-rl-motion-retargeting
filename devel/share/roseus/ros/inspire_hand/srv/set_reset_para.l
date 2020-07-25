;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_reset_para)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_reset_para (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_RESET_PARA")
  (make-package "INSPIRE_HAND::SET_RESET_PARA"))
(unless (find-package "INSPIRE_HAND::SET_RESET_PARAREQUEST")
  (make-package "INSPIRE_HAND::SET_RESET_PARAREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_RESET_PARARESPONSE")
  (make-package "INSPIRE_HAND::SET_RESET_PARARESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_reset_paraRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::set_reset_paraRequest
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

(defclass inspire_hand::set_reset_paraResponse
  :super ros::object
  :slots (_setreset_para_accepted ))

(defmethod inspire_hand::set_reset_paraResponse
  (:init
   (&key
    ((:setreset_para_accepted __setreset_para_accepted) nil)
    )
   (send-super :init)
   (setq _setreset_para_accepted __setreset_para_accepted)
   self)
  (:setreset_para_accepted
   (&optional __setreset_para_accepted)
   (if __setreset_para_accepted (setq _setreset_para_accepted __setreset_para_accepted)) _setreset_para_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _setreset_para_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _setreset_para_accepted
       (if _setreset_para_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _setreset_para_accepted
     (setq _setreset_para_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_reset_para
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_reset_para :md5sum-) "09c8a3c1c50f7ff06e4871280095d7ee")
(setf (get inspire_hand::set_reset_para :datatype-) "inspire_hand/set_reset_para")
(setf (get inspire_hand::set_reset_para :request) inspire_hand::set_reset_paraRequest)
(setf (get inspire_hand::set_reset_para :response) inspire_hand::set_reset_paraResponse)

(defmethod inspire_hand::set_reset_paraRequest
  (:response () (instance inspire_hand::set_reset_paraResponse :init)))

(setf (get inspire_hand::set_reset_paraRequest :md5sum-) "09c8a3c1c50f7ff06e4871280095d7ee")
(setf (get inspire_hand::set_reset_paraRequest :datatype-) "inspire_hand/set_reset_paraRequest")
(setf (get inspire_hand::set_reset_paraRequest :definition-)
      "---
bool setreset_para_accepted
")

(setf (get inspire_hand::set_reset_paraResponse :md5sum-) "09c8a3c1c50f7ff06e4871280095d7ee")
(setf (get inspire_hand::set_reset_paraResponse :datatype-) "inspire_hand/set_reset_paraResponse")
(setf (get inspire_hand::set_reset_paraResponse :definition-)
      "---
bool setreset_para_accepted
")



(provide :inspire_hand/set_reset_para "09c8a3c1c50f7ff06e4871280095d7ee")


