
(defun hybrid-prin1 (x)
 (cond ((atom x) (format t "~S" x))
       (t (hybrid-print-car (car x))
          (hybrid-print-cdr (cdr x)))))

(defun hybrid-print-car (x)
 (format t "(")
 (hybrid-prin1 x))

(defun hybrid-print-cdr (x)
 (cond ((null x) (format t ")"))
       ((atom x) (format t " . ~S)" x))
       (t (format t " ")
          (hybrid-prin1 (car x))
          (hybrid-print-cdr (cdr x)))))
