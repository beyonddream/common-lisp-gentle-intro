(defun cycle (x)
 (cond ((< x 99) (+ x 1))
       (t (+ 1 (mod x 99)))))
