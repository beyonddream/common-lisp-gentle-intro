

(defun count-cons (tree)
  (cond ((atom tree) 0)
        (t (+ 1 (count-cons (car tree))
              (count-cons (cdr tree))))))
