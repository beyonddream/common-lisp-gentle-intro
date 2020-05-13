

(defun laugh (num)
 (if (< num 1) nil
  (cons 'ha (laugh (- num 1)))))
