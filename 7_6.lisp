(funcall #'(lambda (x)
 (cond ((equal x t) t)
       ((equal x nil) t)
       (t nil))) 50)

