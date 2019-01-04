;;; cl-cat.asd
(in-package :cl-user)    
(defpackage :cl-grep-asd  
  (:use :cl :asdf))      
(in-package :cl-grep-asd)

(defsystem :cl-grep
  :class :package-inferred-system   ; システム定義のスタイルをpackage-inferred-systemにする
  :description "grep command implemented with Common Lisp"
  :version "0.1"
  :author "loksam"
  :license "Public Domain"
  :depends-on ("cl-grep/main"))