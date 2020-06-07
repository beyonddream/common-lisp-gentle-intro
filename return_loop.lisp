

(defun find-first-odd (list-of-numbers)
 (dolist (e list-of-numbers)
  (format t "~&Testing ~S..." e)
  (when (oddp e)
   (format t "found an odd number.")
   (return e))))
