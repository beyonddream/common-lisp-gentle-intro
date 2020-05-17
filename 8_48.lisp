

(defun bury (x n)
 (cond ((zerop n) x)
       (t (list (bury x (- n 1))))))

