

(defun nice (x y)
 (let ((xy (cond ((> x y)
                  (list y x))
                 (t (list x y)))))
  (let* ((avg (/ (+ (first xy) (second xy)) 2.0))
         (pct (* 100 (/ avg (second xy)))))
   (list 'average avg 'is pct 'percent 'of 'max (second xy)))))
