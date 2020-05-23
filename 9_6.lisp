

(defun calc-gross-pay ()
 (format t "Enter the hourly wage: ")
 (force-output)
 (let ((x (read)))
  (format t "Enter number of hours worked: ")
  (force-output)
  (let ((y (read)))
   (format t "The gross pay is ~S~%"
    (* x y)))))
