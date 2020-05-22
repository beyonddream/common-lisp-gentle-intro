


(defun print-board (x)
 (cond ((null x) (format t "~%"))
       (t (format t "~&~A |" (or (first x) '" "))
          (format t " ~A |" (or (second x) '" "))
          (format t " ~A~%" (or (third x) '" "))
          (format t "-----------~%")
          (print-board (rest (rest (rest x)))))))

