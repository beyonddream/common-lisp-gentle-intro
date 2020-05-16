

(defun combine (x y)
 (+ x y))

(defun fib (n)
  (cond ((equal n 0) 1)
        ((equal n 1) 1)
        (t (combine (fib (- n 1))
                    (fib (- n 2))))))
