(defun gtest (x y)
 (cond ((> x y) t)
       ((zerop x) t)
       ((zerop y) t)
       (t nil)))

(defun gtest2 (x y)
 (if (> x y) t
  (if (zerop x) t
   (if (zerop y) t))))
