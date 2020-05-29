

(setf *friends* nil)
(Setf *count-multiple-meetings* 0)

(defun meet (person)
 (cond ((equal person (first *friends*))
        (incf *count-multiple-meetings*)
        'we-just-met)
       ((member person *friends*)
        (incf *count-multiple-meetings*)
        'we-know-each-other)
       (t (push person *friends*)
          'pleased-to-meet-you)))
