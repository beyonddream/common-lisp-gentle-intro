

(defun sell (n)
 "Ye Olde Lemonade Stand: Sales by the Glass."
 (setf *total-glasses* (+ *total-glasses* n))
 (format t
  "~&That makes ~S glasses so far today.~%"
  *total-glasses*))
