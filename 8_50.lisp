

(defun sublists (x)
  (cond ((null x) nil)
        (t (append (list x) (sublists (rest x))))))
