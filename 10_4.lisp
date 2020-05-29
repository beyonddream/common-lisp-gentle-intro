

(defun forget (person)
 (cond ((not (member person *friends*))
        (format t "~&~S not in *friends*~%" person))
       (t (setf *friends* (set-difference *friends* (list person))))))
