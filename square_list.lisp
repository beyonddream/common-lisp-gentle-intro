


(defun square-list (x)
 (mapcar #'(lambda (e)
            (if (numberp e)
             (* e e)
             (return-from square-list 'nope)))
  x))
