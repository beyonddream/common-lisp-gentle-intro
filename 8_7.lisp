

(defun rec-member (x y)
  (cond ((null y) nil)
        ((equal x (first y)) y)
        (t (rec-member x (rest y)))))
