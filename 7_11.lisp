(defun greater-one-less-five (x)
 (remove-if-not #'(lambda (e)
                   (and (> e 1) (< e 5))) x)) ; (< 1 x 5) also works
