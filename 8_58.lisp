

(defun merge-lists (x y)
  (cond ((null x) y)
        ((null y) x)
        ((< (first x) (first y))
           (cons (first x) (merge-lists (rest x) y)))
        (t (cons (first y) (merge-lists x (rest y))))))
