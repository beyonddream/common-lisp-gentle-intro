

(defun it-length (x)
 (let ((len 0))
  (dolist (i x len)
   (incf len))))
