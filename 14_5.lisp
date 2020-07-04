

(defmacro set-mutual (x y)
 `(let ()
         (setf ,x ',y)
         (setf ,y ',x)))
