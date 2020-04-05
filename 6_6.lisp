(defun last-element (l)
 (first (last l)))

(defun last-element-v2 (l)
 (first (reverse l)))

(defun last-element-v3 (l)
 (and l ; to handle NIL
  (nth (- (length l) 1) l)))
