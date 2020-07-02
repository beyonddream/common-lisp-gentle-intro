


(defun hasprop (sym prop)
 (not (equal (get sym prop 'unknown) 'unknown)))
