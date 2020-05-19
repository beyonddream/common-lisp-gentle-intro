


(defun count-up (n)
 (labels ((count-up-recursively (cnt)
           (if (> cnt n) nil
                (cons cnt (count-up-recursively (+ cnt 1))))))
  (count-up-recursively 1)))
