(defun count-the-words (x)
 (length (remove-if-not #'(lambda (e)
                          (equal e 'the)) x)))
