


(defun average (&rest args
                &aux (len (length args)))
 (/ (reduce #'+ args) len 1.0))
