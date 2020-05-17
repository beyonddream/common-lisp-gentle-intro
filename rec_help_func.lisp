
(defun count-up-recursively (cnt n)
 (cond ((> cnt n) nil)
       (t (cons cnt (count-up-recursively (+ 1 cnt) n)))))

(defun count-up (n)
 (count-up-recursively 1 n))


