
(cl:in-package :asdf)

(defsystem "yumi_robot_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "yumi_execute" :depends-on ("_package_yumi_execute"))
    (:file "_package_yumi_execute" :depends-on ("_package"))
  ))