

(defun draw-box (col row)
  (cond ((zerop row) nil)
        (t (draw-line col)
           (draw-box col (- row 1)))))
