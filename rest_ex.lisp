

(defun average (&rest args)
 (/ (reduce #'+ args)
    (length args)
    1.0))


(defun square-all (&rest args)
 (if (null args) nil
  (cons (* (first args) (first args))
   (apply #'square-all (rest args)))))
