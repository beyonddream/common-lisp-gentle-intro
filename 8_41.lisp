

(defun sum-tree (tree)
  (cond ((numberp tree) tree)
        ((atom tree) 0)
        (t (+ (sum-tree (car tree))
              (sum-tree (cdr tree))))))
