


(defun pairings (x y)
  (cond ((null x) nil)
        (t (cons (list (first x) (first y)) (pairings (rest x) (rest y))))))
