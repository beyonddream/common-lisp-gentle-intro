


(defun count-slices (loaf)
 (do ((cnt 0 (+ cnt 1))
      (z loaf (rest z)))
    ((null z) cnt)))
