

(defun riddle ()
 (if (yes-or-no-p
      "Do you seek zen enlightenment? ")
     (format t "Then you do not ask for it!~%")
     (format t "You have found it.~%")))
