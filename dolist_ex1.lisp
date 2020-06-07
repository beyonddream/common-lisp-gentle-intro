

(defun check-all-odd (list-of-numbers)
 (dolist (e list-of-numbers t)
  (format t "~&Checking ~S..." e)
  (if (not (oddp e)) (return nil))))
