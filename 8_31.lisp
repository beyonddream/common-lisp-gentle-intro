
(defun compare-lengths (x y)
 (cond ((and (null x) (null y)) 'same-length)
       ((null x) 'second-is-longer)
       ((null y) 'first-is-longer)
       (t (compare-lengths (rest x) (rest y)))))
