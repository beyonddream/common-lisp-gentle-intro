

(defun space-over (n)
  (cond ((< n 0) (format t "~&Error!~%")
                 (force-output))
        ((zerop n) nil)
        (t (format t " ")
           (force-output)
           (space-over (- n 1)))))

(defun plot-one-point (plotting-string y-val)
  (space-over y-val)
  (if (not (< y-val 0)) (format t "~A~%" plotting-string)))

(defun plot-points (plotting-string y-vals)
  (cond ((null y-vals) nil)
        (t (plot-one-point plotting-string (first y-vals))
           (plot-points plotting-string (rest y-vals)))))

(defun generate (m n)
 (cond ((> m n) nil)
       (t (cons m (generate (+ m 1) n)))))

(defun make-graph (f start end plotting-string)
 (plot-points plotting-string (mapcar f (generate start end))))
