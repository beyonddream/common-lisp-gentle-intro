


(defun extract-symbols (x)
 (cond ((null x) nil)
       ((symbolp (first x))
        (cons (first x) (extract-symbols (rest x))))
       (t (extract-symbols (rest x)))))
