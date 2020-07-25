;; Auto-generated. Do not edit!


(when (boundp 'inspire_hand::set_clear_error)
  (if (not (find-package "INSPIRE_HAND"))
    (make-package "INSPIRE_HAND"))
  (shadow 'set_clear_error (find-package "INSPIRE_HAND")))
(unless (find-package "INSPIRE_HAND::SET_CLEAR_ERROR")
  (make-package "INSPIRE_HAND::SET_CLEAR_ERROR"))
(unless (find-package "INSPIRE_HAND::SET_CLEAR_ERRORREQUEST")
  (make-package "INSPIRE_HAND::SET_CLEAR_ERRORREQUEST"))
(unless (find-package "INSPIRE_HAND::SET_CLEAR_ERRORRESPONSE")
  (make-package "INSPIRE_HAND::SET_CLEAR_ERRORRESPONSE"))

(in-package "ROS")





(defclass inspire_hand::set_clear_errorRequest
  :super ros::object
  :slots ())

(defmethod inspire_hand::set_clear_errorRequest
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

(defclass inspire_hand::set_clear_errorResponse
  :super ros::object
  :slots (_setclear_error_accepted ))

(defmethod inspire_hand::set_clear_errorResponse
  (:init
   (&key
    ((:setclear_error_accepted __setclear_error_accepted) nil)
    )
   (send-super :init)
   (setq _setclear_error_accepted __setclear_error_accepted)
   self)
  (:setclear_error_accepted
   (&optional __setclear_error_accepted)
   (if __setclear_error_accepted (setq _setclear_error_accepted __setclear_error_accepted)) _setclear_error_accepted)
  (:serialization-length
   ()
   (+
    ;; bool _setclear_error_accepted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _setclear_error_accepted
       (if _setclear_error_accepted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _setclear_error_accepted
     (setq _setclear_error_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inspire_hand::set_clear_error
  :super ros::object
  :slots ())

(setf (get inspire_hand::set_clear_error :md5sum-) "a7e6099bc802656c2632bf2a50f44b2b")
(setf (get inspire_hand::set_clear_error :datatype-) "inspire_hand/set_clear_error")
(setf (get inspire_hand::set_clear_error :request) inspire_hand::set_clear_errorRequest)
(setf (get inspire_hand::set_clear_error :response) inspire_hand::set_clear_errorResponse)

(defmethod inspire_hand::set_clear_errorRequest
  (:response () (instance inspire_hand::set_clear_errorResponse :init)))

(setf (get inspire_hand::set_clear_errorRequest :md5sum-) "a7e6099bc802656c2632bf2a50f44b2b")
(setf (get inspire_hand::set_clear_errorRequest :datatype-) "inspire_hand/set_clear_errorRequest")
(setf (get inspire_hand::set_clear_errorRequest :definition-)
      "---
bool setclear_error_accepted
")

(setf (get inspire_hand::set_clear_errorResponse :md5sum-) "a7e6099bc802656c2632bf2a50f44b2b")
(setf (get inspire_hand::set_clear_errorResponse :datatype-) "inspire_hand/set_clear_errorResponse")
(setf (get inspire_hand::set_clear_errorResponse :definition-)
      "---
bool setclear_error_accepted
")



(provide :inspire_hand/set_clear_error "a7e6099bc802656c2632bf2a50f44b2b")


