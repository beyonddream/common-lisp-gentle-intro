(defun next-to-last (l)
 (second (reverse l)))

(defun next-to-last-v2 (l)
 (and (rest l) ; to handle short list
  (nth (- (length l) 2) l)))

