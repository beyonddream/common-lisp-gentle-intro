

(defun left-half-recursive (len index x)
  (cond ((if (evenp len)
           (> index (/ len 2))
           (> index (1+ (/ len 2)))) nil)
        (t (cons (first x) (left-half-recursive len (+ 1 index) (rest x))))))

(defun left-half (x)
 (left-half-recursive (length x) 1 x))
