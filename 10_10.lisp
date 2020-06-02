

(defun ntack (x y)
 (cond ((null x)
        (setf x (list y)))
      (t (nconc x (list y))))
 x)
