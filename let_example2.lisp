(defun switch-billing (x)
 (let ((star (first x))
       (co-star (third x)))
  (list co-star 'accompanied 'by star)))
