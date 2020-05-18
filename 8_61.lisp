

(defun count-up-tail-recur (index acc n)
  (cond ((equal index n) acc)
        (t (count-up-tail-recur (1+ index)
                                (append acc (list (1+ index)))
                                n))))

(defun count-up (n)
 (count-up-tail-recur 0 nil n))
