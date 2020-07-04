

(defun print-in-base (*print-base* x)
 (format t "~&~D is written ~S in base ~D."
  x x *print-base*))
