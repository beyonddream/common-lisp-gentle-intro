

(setf *friends* nil)

(defun meet (person)
 (cond ((equal person (first *friends*)) 'we-just-met)
       ((member person *friends*) 'we-know-each-other)
       (t (push person *friends*)
          'pleased-to-meet-you)))
