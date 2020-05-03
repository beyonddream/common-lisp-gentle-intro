
(defun total-length (x)
 (reduce #'+ (mapcar #'length x)))

(defun total-length2 (x)
 (length (reduce #'append x)))
