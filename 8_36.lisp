

(defun count-odd (x)
 (cond ((null x) 0)
       ((oddp (first x))
         (+ 1 (count-odd (rest x))))
       (t (count-odd (rest x)))))


(defun count-odd1 (x)
  (cond ((null x) 0)
        (t (+ (if (oddp (first x))
                1 0) (count-odd1 (rest x))))))
