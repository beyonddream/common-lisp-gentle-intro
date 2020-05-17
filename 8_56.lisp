

(defun every-other-recursive (index x)
 (cond ((null x) nil)
       ((evenp index)
        (every-other-recursive (+ index 1) (rest x)))
       (t (cons (first x) (every-other-recursive (+ index 1) (rest x))))))

(defun every-other (x)
 (every-other-recursive 1 x))
