


(defun my-set-difference (x y)
  (cond ((null x) nil)
        ((not (member (first x) y))
         (cons (first x) (my-set-difference (rest x) y)))
         (t (my-set-difference (rest x) y))))

