(defun factors-help (n p)
 (cond ((equal n 1) nil)
       ((zerop (rem n p))
        (cons p (factors-help (/ n p) p)))
       (t (factors-help n (+ 1 p)))))

(defun factors (n)
 (factors-help n 2))

(defun factor-tree-help (n p)
  (cond ((equal n 1) nil)
        ((member n '(2 3 5 7)) n)
        ((zerop (rem n p))
         (list n
               p
               (factor-tree-help (/ n p) p)))
        (t (factor-tree-help n (+ 1 p)))))

(defun factor-tree (n)
 (factor-tree-help n 2))



