

(defun huge-recursive (index n)
 (cond ((> index n) 1)
       (t (* n (huge-recursive (+ index 1) n)))))

(defun huge (n)
 (huge-recursive 1 n))
