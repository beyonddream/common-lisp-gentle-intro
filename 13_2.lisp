
(load "13_1.lisp")

(defun forget-meeting (x y)
 (subprop x y 'has-met)
 (subprop y x 'has-met)
 t)
