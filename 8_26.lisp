(defun count-down (n)
 (cond ((< n 0) nil)
       (t (cons n (count-down (- n 1))))))

(defun count-down-2 (n)
 (cond ((zerop n) (list 0))
       (t (cons n (count-down (- n 1))))))
