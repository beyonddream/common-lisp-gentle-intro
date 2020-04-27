(defun find-nested (x)
 (find-if #'(lambda (e)
             (and (not (null e))
              (listp e))) x))

;; solution uses consp
