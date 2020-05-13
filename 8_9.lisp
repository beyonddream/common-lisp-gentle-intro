

(defun rec-nth (index x)
 (cond ((null x) nil)
       ((equal 0 index) (first x))
       (t (rec-nth (- index 1) (rest x)))))
