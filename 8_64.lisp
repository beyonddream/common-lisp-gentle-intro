

(defun tree-find-if (fn tree)
 (cond ((null tree) nil)
       ((atom tree) (and (funcall fn tree) tree))
       (t (or (tree-find-if fn (car tree))
              (tree-find-if fn (cdr tree))))))
