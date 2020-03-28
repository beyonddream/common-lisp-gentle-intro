(defun compare (x y)
 (if (equal x y) 'numbers-are-the-same
  (if (< x y) 'first-is-smaller
   (if (> x y) 'first-is-bigger))))

(defun compare2 (x y)
 (or (and (equal x y) 'numbers-are-the-same)
     (and (< x y) 'first-is-smaller)
     (and (> x y) 'first-is-bigger)))
