

(defun it-member (x l)
 (dolist (y l nil)
  (if (equal x y) (return t))))
