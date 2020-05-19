


(defun tr-count-slices (loaf)
 (labels ((tr-count-slices (n loaf)
           (cond ((null loaf) n)
                 (t (tr-count-slices (+ 1 n) (rest loaf))))))
  (tr-count-slices 0 loaf)))

(defun tr-reverse (x)
 (labels ((tr-reverse-recur (x acc)
           (cond ((null x) acc)
                 (t (tr-reverse-recur (rest x) (cons (first x) acc))))))
  (tr-reverse-recur x nil)))
