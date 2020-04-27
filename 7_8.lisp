(defun roughly-equal (x k)
  (find-if #'(lambda (e) (and (< (- k 10) e)
                              (< e (+ k 10)))) x))
