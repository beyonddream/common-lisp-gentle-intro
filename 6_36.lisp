(defun get-first (x)
 (first x))

(defun get-last (x)
 (car (last x)))

(defun remove-first-last (x)
 (remove (get-last x) (remove (get-first x) x)))

(defun swap-first-last (x)
  (if (> 2 (length x))
    x
    (append (list (get-last x)) (remove-first-last x) (list (get-first x)))))
