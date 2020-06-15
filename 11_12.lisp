

(defun power-of-2 (n)
 (do ((x 1 (+ x 1))
      (result 1 (* result 2)))
  ((> x n) (return result))))
