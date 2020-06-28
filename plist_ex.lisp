


(defun addprop (sym elem prop)
 (pushnew elem (get sym prop)))

(defun record-meeting (x y)
 (addprop x y 'has-met)
 (addprop y x 'has-met)
 t)
