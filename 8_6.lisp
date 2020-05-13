


(defun alloddp (x)
  (cond ((null x) t)
        (t (and (oddp (first x)) (alloddp (rest x))))))
