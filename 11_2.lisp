


(defun it-assoc (x l)
 (dolist (y l)
  (when (equal x (first y))
   (return y))))
