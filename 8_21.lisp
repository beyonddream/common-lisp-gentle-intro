

(defun add-nums (x)
 (cond ((zerop x) 0)
       (t (+ x (add-nums (- x 1))))))
