

(defun rec-assoc (x y)
  (cond ((null y) nil)
        ((equal x (car (first y))) (first y))
        (t (rec-assoc x (rest y)))))
