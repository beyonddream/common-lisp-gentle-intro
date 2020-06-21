

(defun read-a-number ()
 (do ((answer nil))
  (nil)
  (format t "~&Please type a number: ")
  (force-output)
  (setf answer (read))
  (if (numberp answer)
   (return answer))
  (format t
   "~&Sorry, ~S is not a number. Try again."
   answer)))
