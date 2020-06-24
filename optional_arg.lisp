


(defun foo (x &optional y)
 (format t "~&X is ~S" x)
 (format t "~&Y is ~S" y)
 (list x y))


(defun divide-check (dividend &optional (divisor 2))
 (format t "~&~S ~A divide evenly by ~S"
  dividend
  (if (zerop (rem dividend divisor)) "does"
   "does not")
  divisor))
