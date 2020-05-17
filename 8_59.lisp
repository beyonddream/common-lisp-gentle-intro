


(defun factorial-faulty (n)
  (cond ((zerop n) 1)
        (t (/ (factorial-faulty (+ n 1)) (+ n 1)))))
