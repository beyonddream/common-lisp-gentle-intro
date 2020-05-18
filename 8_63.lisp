(defun my-union-recur (x y acc)
 (cond ((null y) acc)
       ((not (member (first y) x))
        (my-union-recur x (rest y) (cons (first y) acc)))
       (t (my-union-recur x (rest y) acc))))

(defun my-union (x y)
 (my-union-recur x y x))

(defun my-intersection-recur (x y acc)
 (cond ((null x) acc)
       ((member (first x) y)
        (my-intersection-recur (rest x) y (cons (first x) acc)))
       (t (my-intersection-recur (rest x) y acc))))

(defun my-intersection (x y)
 (my-intersection-recur x y nil))

(defun my-set-difference-recur (x y acc)
 (cond ((null y) acc)
       ((member (first y) x)
        (my-set-difference-recur x (rest y) (remove (first y) acc)))
       (t (my-set-difference-recur x (rest y) acc))))

(defun my-set-difference (x y)
 (my-set-difference-recur x y x))
