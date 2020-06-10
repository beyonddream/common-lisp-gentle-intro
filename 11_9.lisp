


(defun check-all-odd (x)
 (do ((l x (rest l)))
     ((null l) t)
     (unless (oddp (first l))
      (return nil))))
