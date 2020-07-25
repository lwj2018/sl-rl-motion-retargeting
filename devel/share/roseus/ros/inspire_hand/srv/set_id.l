;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_id)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_id (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_ID")
  (make-package "INSPIRE_HAND::SET_ID"))
(unless (find-package "INSPIRE_HAND::SET_IDREQUEST")
  (make-package "INSPIRE_HAND::SET_IDREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_IDRESPONSE")
  (make-package "INSPIRE_HAND::SET_IDRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_idRequest
  :super ros::object
  :slots (_id ))

(defmethod inspire_hand::set_idRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inspire_hand::set_idResponse
  :super ros::object
  :slots (_idgrab ))

(defmethod inspire_hand::set_idResponse
  (:init
   (&key
    ((:idgrab __idgrab) nil)
    )
   (send-super :init)
   (setq _idgrab __idgrab)
   self)
  (:idgrab
   (&optional __idgrab)
   (if __idgrab (setq _idgrab __idgrab)) _idgrab)
  (:serialization-length
   ()
   (+
    ;; bool _idgrab
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _idgrab
       (if _idgrab (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _idgrab
     (setq _idgrab (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_id
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_id :md5sum-) "5d26ecd99832c8b42f5065ef1190a622")
(setf (get inspire_hand::set_id :datatype-) "inspire_hand/set_id")
(setf (get inspire_hand::set_id :request) inspire_hand::set_idRequest)
(setf (get inspire_hand::set_id :response) inspire_hand::set_idResponse)

(defmethod inspire_hand::set_idRequest
  (:response () (instance inspire_hand::set_idResponse :init)))

(setf (get inspire_hand::set_idRequest :md5sum-) "5d26ecd99832c8b42f5065ef1190a622")
(setf (get inspire_hand::set_idRequest :datatype-) "inspire_hand/set_idRequest")
(setf (get inspire_hand::set_idRequest :definition-)
      "int32 id
---
bool idgrab

")

(setf (get inspire_hand::set_idResponse :md5sum-) "5d26ecd99832c8b42f5065ef1190a622")
(setf (get inspire_hand::set_idResponse :datatype-) "inspire_hand/set_idResponse")
(setf (get inspire_hand::set_idResponse :definition-)
      "int32 id
---
bool idgrab

")



(provide :inspire_hand/set_id "5d26ecd99832c8b42f5065ef1190a622")


