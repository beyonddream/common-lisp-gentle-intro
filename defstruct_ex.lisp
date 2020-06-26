


(defstruct starship
 (name nil)
 (speed 0)
 (condition 'green)
 (shields 'down))

(defun raise-alert (x)
 (setf (starship-shields x) 'up)
 (if (equal (starship-condition x) 'green)
     (setf (starship-condition x) 'yellow))
 'shields-raised)


