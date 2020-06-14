


(defun find-matching-elements (x y)
  (do ((x1 x (rest x1))
       (y1 y (rest y1)))
    ((or (null x1) (null y1)) nil)
    (if (equal (first x1) (first y1))
      (return (first x1)))))
