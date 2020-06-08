


(defun it-nth (index l)
 (let ((i 0))
  (dolist (x l)
   (if (equal i index) (return x))
   (incf i))))

;; alternate version from solution guide
(defun it-nth1 (index l)
 (dotimes (i index (first l))
  (pop l)))
