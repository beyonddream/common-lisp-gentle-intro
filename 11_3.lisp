

(defun check-all-odd (list-of-numbers)
 (let ((x (first list-of-numbers)))
  (and x (format t "~&Checking ~S..." x))
  (cond ((null x) t)
        ((not (oddp x)) nil)
        (t (check-all-odd (rest list-of-numbers))))))
