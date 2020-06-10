


(defun it-intersection (x y)
 (let ((result nil))
  (dolist (e x (reverse result))
   (when (member e y)
    (push e result)))))

