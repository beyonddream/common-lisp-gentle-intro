(defun constrain (x min max)
     (cond ((< x min) min)
           ((> x max) max)
           (t x)))


