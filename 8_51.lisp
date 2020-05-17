

(defun my-reverse-recursively (acc x)
 (cond ((null x) acc)
       (t (my-reverse-recursively (cons (first x) acc) (rest x)))))

(defun my-reverse (x)
 (my-reverse-recursively nil x))
