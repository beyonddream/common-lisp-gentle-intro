

(defun all-equal (x)
 (cond ((null (rest x)) t)
       ((not (equal (first x) (second x))) nil)
       (t (all-equal (rest x)))))
