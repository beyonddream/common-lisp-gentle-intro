


(defun app-square-list (list-of-numbers)
 (mapcar #'(lambda (n) (* n n)) list-of-numbers))

(defun it-square-list (list-of-numbers)
 (let ((result nil))
  (dolist (e list-of-numbers (reverse result))
   (push (* e e) result))))
