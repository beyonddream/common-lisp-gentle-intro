(defun my-member (x y)
 (cond ((null y) nil)
       ((equal x (first y)) y)
       (t (my-member x (rest y)))))
