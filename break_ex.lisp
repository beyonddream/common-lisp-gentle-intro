

(defun analyze-profit (price commission-rate)
 (let* ((commission (* price commission-rate))
        (result (cond ((> commission 100) 'rich)
                      ((< commission 100) 'poor))))
  (format t "~&I predict you will be: ~S" result)
  result))
