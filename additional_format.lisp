


(defun sevenths (x)
 (mapcar #'(lambda (numerator)
            (format t "~&~4,2F / 7 is ~7,5F"
             numerator
             (/ numerator 7.0))) x)
 'done)
