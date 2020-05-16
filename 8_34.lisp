



(defun my-intersection (x y)
 (cond ((null x) nil)
       ((not (member (first x) y))
        (my-intersection (rest x) y))
       (t (cons (first x) (my-intersection (rest x) y)))))
