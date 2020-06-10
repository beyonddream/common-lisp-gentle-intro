

(defun it-reverse (x)
 (let ((result nil))
  (dolist (e x result)
   (push e result))))
