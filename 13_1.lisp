


(defun subprop (sym element prop)
 (setf (get sym prop) (delete element (get sym prop))))
