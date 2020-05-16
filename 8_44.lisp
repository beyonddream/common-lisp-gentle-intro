
(defun tree-depth (tree)
  (cond ((atom tree) 0)
        (t (+ 1 (max (tree-depth (car tree))
                     (tree-depth (cdr tree)))))))



