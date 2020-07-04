


(defmacro simple-rotate (a b)
 `(let ((x ,a))
         (setf ,a ,b)
         (setf ,b x)))
