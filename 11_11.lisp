


(defun find-largest (list-of-numbers)
 (do* ((n list-of-numbers (rest n))
       (f (first n) (first n))
       (largest f (if (and (numberp f) (> f largest)) f largest)))
  ((null n) largest)))
