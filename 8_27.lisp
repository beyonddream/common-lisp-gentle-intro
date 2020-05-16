

(defun square-list (x)
 (cond ((null x) nil)
       (t (cons (* (first x) (first x)) (square-list (rest x))))))
