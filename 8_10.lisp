(defun add1 (x)
 (+ x 1))

(defun sub1 (x)
 (- x 1))

(defun rec-plus (x y)
  (cond ((zerop y) x)
        (t (rec-plus (add1 x) (sub1 y)))))
