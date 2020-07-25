;; Auto-generated. Do not edit!


(when (boundp 'yumi_collision_checking::yumi_execute)
  (if (not (find-package "YUMI_COLLISION_CHECKING"))
    (make-package "YUMI_COLLISION_CHECKING"))
  (shadow 'yumi_execute (find-package "YUMI_COLLISION_CHECKING")))
(unless (find-package "YUMI_COLLISION_CHECKING::YUMI_EXECUTE")
  (make-package "YUMI_COLLISION_CHECKING::YUMI_EXECUTE"))
(unless (find-package "YUMI_COLLISION_CHECKING::YUMI_EXECUTEREQUEST")
  (make-package "YUMI_COLLISION_CHECKING::YUMI_EXECUTEREQUEST"))
(unless (find-package "YUMI_COLLISION_CHECKING::YUMI_EXECUTERESPONSE")
  (make-package "YUMI_COLLISION_CHECKING::YUMI_EXECUTERESPONSE"))

(in-package "ROS")





(defclass yumi_collision_checking::yumi_executeRequest
  :super ros::object
  :slots (_command _Qt _group_name _t ))

(defmethod yumi_collision_checking::yumi_executeRequest
  (:init
   (&key
    ((:command __command) "")
    ((:Qt __Qt) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:group_name __group_name) "")
    ((:t __t) 0)
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _Qt __Qt)
   (setq _group_name (string __group_name))
   (setq _t (round __t))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:Qt
   (&optional __Qt)
   (if __Qt (setq _Qt __Qt)) _Qt)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; float64[] _Qt
    (* 8    (length _Qt)) 4
    ;; string _group_name
    4 (length _group_name)
    ;; int64 _t
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; float64[] _Qt
     (write-long (length _Qt) s)
     (dotimes (i (length _Qt))
       (sys::poke (elt _Qt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; int64 _t
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _t (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _t) (= (length (_t . bv)) 2)) ;; bignum
              (write-long (ash (elt (_t . bv) 0) 0) s)
              (write-long (ash (elt (_t . bv) 1) -1) s))
             ((and (class _t) (= (length (_t . bv)) 1)) ;; big1
              (write-long (elt (_t . bv) 0) s)
              (write-long (if (>= _t 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _t s)(write-long (if (>= _t 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _Qt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Qt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Qt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _t
#+(or :alpha :irix6 :x86_64)
      (setf _t (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _t (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass yumi_collision_checking::yumi_executeResponse
  :super ros::object
  :slots (_xt_hat _Qt_hat _xt _Qt _x_next _Q_next _if_collide ))

(defmethod yumi_collision_checking::yumi_executeResponse
  (:init
   (&key
    ((:xt_hat __xt_hat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Qt_hat __Qt_hat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:xt __xt) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Qt __Qt) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x_next __x_next) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Q_next __Q_next) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:if_collide __if_collide) 0.0)
    )
   (send-super :init)
   (setq _xt_hat __xt_hat)
   (setq _Qt_hat __Qt_hat)
   (setq _xt __xt)
   (setq _Qt __Qt)
   (setq _x_next __x_next)
   (setq _Q_next __Q_next)
   (setq _if_collide (float __if_collide))
   self)
  (:xt_hat
   (&optional __xt_hat)
   (if __xt_hat (setq _xt_hat __xt_hat)) _xt_hat)
  (:Qt_hat
   (&optional __Qt_hat)
   (if __Qt_hat (setq _Qt_hat __Qt_hat)) _Qt_hat)
  (:xt
   (&optional __xt)
   (if __xt (setq _xt __xt)) _xt)
  (:Qt
   (&optional __Qt)
   (if __Qt (setq _Qt __Qt)) _Qt)
  (:x_next
   (&optional __x_next)
   (if __x_next (setq _x_next __x_next)) _x_next)
  (:Q_next
   (&optional __Q_next)
   (if __Q_next (setq _Q_next __Q_next)) _Q_next)
  (:if_collide
   (&optional __if_collide)
   (if __if_collide (setq _if_collide __if_collide)) _if_collide)
  (:serialization-length
   ()
   (+
    ;; float64[] _xt_hat
    (* 8    (length _xt_hat)) 4
    ;; float64[] _Qt_hat
    (* 8    (length _Qt_hat)) 4
    ;; float64[] _xt
    (* 8    (length _xt)) 4
    ;; float64[] _Qt
    (* 8    (length _Qt)) 4
    ;; float64[] _x_next
    (* 8    (length _x_next)) 4
    ;; float64[] _Q_next
    (* 8    (length _Q_next)) 4
    ;; float64 _if_collide
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _xt_hat
     (write-long (length _xt_hat) s)
     (dotimes (i (length _xt_hat))
       (sys::poke (elt _xt_hat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _Qt_hat
     (write-long (length _Qt_hat) s)
     (dotimes (i (length _Qt_hat))
       (sys::poke (elt _Qt_hat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _xt
     (write-long (length _xt) s)
     (dotimes (i (length _xt))
       (sys::poke (elt _xt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _Qt
     (write-long (length _Qt) s)
     (dotimes (i (length _Qt))
       (sys::poke (elt _Qt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _x_next
     (write-long (length _x_next) s)
     (dotimes (i (length _x_next))
       (sys::poke (elt _x_next i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _Q_next
     (write-long (length _Q_next) s)
     (dotimes (i (length _Q_next))
       (sys::poke (elt _Q_next i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _if_collide
       (sys::poke _if_collide (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _xt_hat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xt_hat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xt_hat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _Qt_hat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Qt_hat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Qt_hat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _xt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _Qt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Qt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Qt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _x_next
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_next (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_next i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _Q_next
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Q_next (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Q_next i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _if_collide
     (setq _if_collide (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass yumi_collision_checking::yumi_execute
  :super ros::object
  :slots ())

(setf (get yumi_collision_checking::yumi_execute :md5sum-) "b1adf680c6857c95eac390b17b06c828")
(setf (get yumi_collision_checking::yumi_execute :datatype-) "yumi_collision_checking/yumi_execute")
(setf (get yumi_collision_checking::yumi_execute :request) yumi_collision_checking::yumi_executeRequest)
(setf (get yumi_collision_checking::yumi_execute :response) yumi_collision_checking::yumi_executeResponse)

(defmethod yumi_collision_checking::yumi_executeRequest
  (:response () (instance yumi_collision_checking::yumi_executeResponse :init)))

(setf (get yumi_collision_checking::yumi_executeRequest :md5sum-) "b1adf680c6857c95eac390b17b06c828")
(setf (get yumi_collision_checking::yumi_executeRequest :datatype-) "yumi_collision_checking/yumi_executeRequest")
(setf (get yumi_collision_checking::yumi_executeRequest :definition-)
      "string command
float64[] Qt
string group_name
int64 t
---
float64[] xt_hat
float64[] Qt_hat
float64[] xt
float64[] Qt
float64[] x_next
float64[] Q_next
float64 if_collide
")

(setf (get yumi_collision_checking::yumi_executeResponse :md5sum-) "b1adf680c6857c95eac390b17b06c828")
(setf (get yumi_collision_checking::yumi_executeResponse :datatype-) "yumi_collision_checking/yumi_executeResponse")
(setf (get yumi_collision_checking::yumi_executeResponse :definition-)
      "string command
float64[] Qt
string group_name
int64 t
---
float64[] xt_hat
float64[] Qt_hat
float64[] xt
float64[] Qt
float64[] x_next
float64[] Q_next
float64 if_collide
")



(provide :yumi_collision_checking/yumi_execute "b1adf680c6857c95eac390b17b06c828")


