

(defun my-union-recursive (x y)
 (cond ((null y) nil)
       ((member (first y) x)
        (my-union-recursive x (rest y)))
       (t (cons (first y) (my-union-recursive x (rest y))))))

(defun my-union (x y)
 (append x (my-union-recursive x y)))
