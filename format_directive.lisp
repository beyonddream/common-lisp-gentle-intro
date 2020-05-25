

(setf glee-club
 '((john smith)
   (barbara wilson)
   (mustapha ali)))

(defun print-one-name (name)
 (format t "~&~10S ~S"
  (second name)
  (first name)))

(defun print-all-names (x)
 (mapcar #'print-one-name x)
 'done)
