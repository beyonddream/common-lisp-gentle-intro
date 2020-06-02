

(defun chop (x)
 (and (consp x)
  (setf (cdr x) nil))
 x)
