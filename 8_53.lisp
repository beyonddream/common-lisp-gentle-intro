

(defun largest-even (x)
 (cond ((null x) 0)
       ((oddp (first x))
        (largest-even (rest x)))
       (t (max (first x) (largest-even (rest x))))))

