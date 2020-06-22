


(defun iter-fib (n)
 (do* ((x 0 (+ x 1))
       (fib_n2 0 fib_n1)
       (fib_n1 0 result)
       (result 1 (+ fib_n1 fib_n2)))
  ((equal x n) result)))

