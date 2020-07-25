;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_force_clb)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_force_clb (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_FORCE_CLB")
  (make-package "INSPIRE_HAND::SET_FORCE_CLB"))
(unless (find-package "INSPIRE_HAND::SET_FORCE_CLBREQUEST")
  (make-package "INSPIRE_HAND::SET_FORCE_CLBREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_FORCE_CLBRESPONSE")
  (make-package "INSPIRE_HAND::SET_FORCE_CLBRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_force_clbRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::set_force_clbRequest
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

(defclass inspire_hand::set_force_clbResponse
  :super ros::object
  :slots (_setforce_clb_accepted ))

(defmethod inspire_hand::set_force_clbResponse
  (:init
   (&key
    ((:setforce_clb_accepted __setforce_clb_accepted) nil)
    )
   (send-super :init)
   (setq _setforce_clb_accepted __setforce_clb_accepted)
   self)
  (:setforce_clb_accepted
   (&optional __setforce_clb_accepted)
   (if __setforce_clb_accepted (setq _setforce_clb_accepted __setforce_clb_accepted)) _setforce_clb_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _setforce_clb_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _setforce_clb_accepted
       (if _setforce_clb_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _setforce_clb_accepted
     (setq _setforce_clb_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_force_clb
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_force_clb :md5sum-) "1ed618c9431c8faa2d80a957bf7da809")
(setf (get inspire_hand::set_force_clb :datatype-) "inspire_hand/set_force_clb")
(setf (get inspire_hand::set_force_clb :request) inspire_hand::set_force_clbRequest)
(setf (get inspire_hand::set_force_clb :response) inspire_hand::set_force_clbResponse)

(defmethod inspire_hand::set_force_clbRequest
  (:response () (instance inspire_hand::set_force_clbResponse :init)))

(setf (get inspire_hand::set_force_clbRequest :md5sum-) "1ed618c9431c8faa2d80a957bf7da809")
(setf (get inspire_hand::set_force_clbRequest :datatype-) "inspire_hand/set_force_clbRequest")
(setf (get inspire_hand::set_force_clbRequest :definition-)
      "---
bool setforce_clb_accepted

")

(setf (get inspire_hand::set_force_clbResponse :md5sum-) "1ed618c9431c8faa2d80a957bf7da809")
(setf (get inspire_hand::set_force_clbResponse :datatype-) "inspire_hand/set_force_clbResponse")
(setf (get inspire_hand::set_force_clbResponse :definition-)
      "---
bool setforce_clb_accepted

")



(provide :inspire_hand/set_force_clb "1ed618c9431c8faa2d80a957bf7da809")


