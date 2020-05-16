

(defun my-assoc (k x)
 (cond ((null x) nil)
       ((equal k (first (first x))) (first x))
       (t (my-assoc k (rest x)))))

