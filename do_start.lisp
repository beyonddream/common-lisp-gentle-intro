

(defun ffo-with-do* (list-of-numbers)
 (do* ((x list-of-numbers (rest x))
       (e (first x) (first x)))
  ((null x) nil)
  (if (oddp e) (return e))))
