

(defun fact (n)
 (do ((i n (- i 1))
      (result 1 (* result i)))
  ((zerop i) result)))
