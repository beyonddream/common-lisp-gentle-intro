(defun lol_2 (x)
 (remove-if-not #'(lambda (e)
                   (equal (length e) 2)) x))
