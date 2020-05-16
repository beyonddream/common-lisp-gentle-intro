

(defun paren-depth (tree)
 (cond ((atom tree) 0)
       (t (max (+ 1 (paren-depth (car tree)))
               (paren-depth (cdr tree))))))
