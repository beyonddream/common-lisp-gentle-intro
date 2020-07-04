


(defmacro showvar (var)
 `(format t "~&The value of ~S is ~S"
         ',var ,var))

(defun f (x y)
 (showvar x)
 (showvar y)
 (* x y))
