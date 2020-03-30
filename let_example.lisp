(defun average (x y)
 (let ((sum (+ x y)))
  (list x y 'average 'is (/ sum 2.0))))
