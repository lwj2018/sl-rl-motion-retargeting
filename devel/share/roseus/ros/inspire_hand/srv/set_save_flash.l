;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_save_flash)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_save_flash (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_SAVE_FLASH")
  (make-package "INSPIRE_HAND::SET_SAVE_FLASH"))
(unless (find-package "INSPIRE_HAND::SET_SAVE_FLASHREQUEST")
  (make-package "INSPIRE_HAND::SET_SAVE_FLASHREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_SAVE_FLASHRESPONSE")
  (make-package "INSPIRE_HAND::SET_SAVE_FLASHRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_save_flashRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::set_save_flashRequest
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

(defclass inspire_hand::set_save_flashResponse
  :super ros::object
  :slots (_setsave_flash_accepted ))

(defmethod inspire_hand::set_save_flashResponse
  (:init
   (&key
    ((:setsave_flash_accepted __setsave_flash_accepted) nil)
    )
   (send-super :init)
   (setq _setsave_flash_accepted __setsave_flash_accepted)
   self)
  (:setsave_flash_accepted
   (&optional __setsave_flash_accepted)
   (if __setsave_flash_accepted (setq _setsave_flash_accepted __setsave_flash_accepted)) _setsave_flash_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _setsave_flash_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _setsave_flash_accepted
       (if _setsave_flash_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _setsave_flash_accepted
     (setq _setsave_flash_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_save_flash
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_save_flash :md5sum-) "ce29f0181fca97433252cab2ac73bda5")
(setf (get inspire_hand::set_save_flash :datatype-) "inspire_hand/set_save_flash")
(setf (get inspire_hand::set_save_flash :request) inspire_hand::set_save_flashRequest)
(setf (get inspire_hand::set_save_flash :response) inspire_hand::set_save_flashResponse)

(defmethod inspire_hand::set_save_flashRequest
  (:response () (instance inspire_hand::set_save_flashResponse :init)))

(setf (get inspire_hand::set_save_flashRequest :md5sum-) "ce29f0181fca97433252cab2ac73bda5")
(setf (get inspire_hand::set_save_flashRequest :datatype-) "inspire_hand/set_save_flashRequest")
(setf (get inspire_hand::set_save_flashRequest :definition-)
      "---
bool setsave_flash_accepted
")

(setf (get inspire_hand::set_save_flashResponse :md5sum-) "ce29f0181fca97433252cab2ac73bda5")
(setf (get inspire_hand::set_save_flashResponse :datatype-) "inspire_hand/set_save_flashResponse")
(setf (get inspire_hand::set_save_flashResponse :definition-)
      "---
bool setsave_flash_accepted
")



(provide :inspire_hand/set_save_flash "ce29f0181fca97433252cab2ac73bda5")


