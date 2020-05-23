

(defun my-square ()
 (format t "Please type in a number: ")
 (force-output) ; flush buffer
 (let ((x (read)))
  (format t "The number ~S squared is ~S.~%"
   x (* x x))))
