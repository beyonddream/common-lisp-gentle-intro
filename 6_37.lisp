(defun rotate-left (x)
 (and x
  (append (rest x) (list (first x)))))

(defun rotate-right (x)
 (and x
  (let ((r (reverse x)))
   (cons (first r)
    (reverse (rest r))))))

