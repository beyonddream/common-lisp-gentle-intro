(defun my-set-inter (x y)
 (remove-if-not #'(lambda (e)
                   (member e y)) x))

(defun my-set-union (x y)
 (append (remove-if #'(lambda (e)
               (member e y)) x) y))
