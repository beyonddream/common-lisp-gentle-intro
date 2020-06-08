


(defun it-intersection (x y)
 (let ((result-set nil))
  (dolist (element x result-set)
   (when (member element y)
    (push element result-set)))))
