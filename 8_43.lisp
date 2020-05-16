

(defun flatten (tree)
 (cond ((null tree) nil)
       ((atom tree) (list tree))
       (t (append (flatten (car tree))
                (flatten (cdr tree))))))
