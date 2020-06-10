


(defun launch (n)
 (do ((cnt n (- cnt 1)))
     ((zerop cnt) (format t "Blast off!~%"))
     (format t "~S..." cnt)))
