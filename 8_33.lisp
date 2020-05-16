

(defun my-remove (x y)
  (cond ((null y) nil)
        ((equal x (first y))
         (my-remove x (rest y)))
        (t (cons x (my-remove x (rest y))))))
