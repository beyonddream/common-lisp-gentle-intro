



(defun add-up (x)
 (cond ((null x) 0)
       (t (+ (first x) (add-up (rest x))))))
