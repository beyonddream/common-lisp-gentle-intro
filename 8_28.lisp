

(defun my-nth (n x)
 (cond ((null x) nil)
       ((zerop n) (first x))
       (t (my-nth (- n 1) (rest x)))))
