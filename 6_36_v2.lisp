;; subtle bug when the number of elements in x is < 2
(defun swap-first-last (x)
 (let* ((a (reverse (rest x)))
        (b (reverse (rest a))))
  (cons (first a)
   (append b (list (first x))))))
