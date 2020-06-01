

(defun analyze-profit (price commission-rate)
 (let* ((commission (* price commission-rate))
        (result (cond ((> commission 100) 'rich)
                      ((< commission 100) 'poor))))
  (break "value of RESULT is ~S" result)
  (format t "~&I predict you will be: ~S" result)
  result))
