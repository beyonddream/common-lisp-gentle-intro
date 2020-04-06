(defun my-subsetp (x y)
 (equal nil (set-difference x y)))

(defun my-subsetp-v2 (x y)
 (null (set-difference x y)))
