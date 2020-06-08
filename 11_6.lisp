


(defun it-union (x y)
 (let ((u x))
  (dolist (e y u)
   (unless (member e u)
    (push e u)))))
