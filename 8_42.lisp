


(defun my-subst (x y l)
  (cond ((equal y l) x)
        ((atom l) l)
        (t (cons (my-subst x y (car l))
                 (my-subst x y (cdr l))))))
