;;; main.lisp
(in-package :cl-user)
(defpackage :cl-grep
  (:use cl)
  (:export :grep))
(in-package :cl-grep)

(defun grep (pettern input-stream output-stream)
  (loop
     for line = (read-line input-stream nil :eof)
     until (eq line :eof)
      when (ppcre:scan pettern line) do (princ line)))

