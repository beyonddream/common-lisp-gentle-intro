


(do ((x 0 (+ 1 x)))
 ((equal x 5) x)
 (format t "~&I = ~S~%" x))
