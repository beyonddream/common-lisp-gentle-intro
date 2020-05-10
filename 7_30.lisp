

(defun trilingual (dictionary words)
 (mapcar #'(lambda (x y) (append x (list y))) dictionary words))
