

(defun fact-recur (n acc)
 (cond ((zerop n) acc)
       (t (fact-recur (- n 1) (* n acc)))))

(defun fact (n)
 (fact-recur n 1))
