

(defun it-intersection (x y)
 (do ((x1 x (rest x1))
      (result nil))
    ((null x1) result)
    (when (member (first x1) y)
     (push (first x1) result))))
