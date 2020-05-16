

(defun sum-numeric-elements (x)
 (cond ((null x) 0)
       ((symbolp (first x))
        (sum-numeric-elements (rest x)))
       (t (+ (first x) (sum-numeric-elements (rest x))))))


