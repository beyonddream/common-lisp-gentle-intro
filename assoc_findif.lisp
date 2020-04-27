
(defun my-assoc (key table)
  (find-if #'(lambda (x)
               (equal key (first x))) table))
