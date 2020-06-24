


(defun addup (n)
 "Adds up the first N integers"
 (do ((i 0 (+ i 1))
      (sum 0 (+ sum i)))
  ((> i n) sum)))
