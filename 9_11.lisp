

(defun dot-prin1 (x)
  (cond ((atom x)
         (format t "~A" x)
         nil)
        (t (format t "(")
           (dot-prin1 (first x))
           (format t " . ")
           (dot-prin1 (rest x))
           (format t ")"))))

