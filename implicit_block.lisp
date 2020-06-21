

(defun find-first-odd (x)
 (format t "~&Searching for an odd number...~%")
 (dolist (element x)
  (when (oddp element)
   (format t "~&Found ~S.~%" element)
   (return-from find-first-odd element)))
 (format t "~&None found.~%")
 'none)
