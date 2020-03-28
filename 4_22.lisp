(defun boilingp (temp scale)
 (cond ((equal scale 'fahrenheit) (> temp 212))
       ((equal scale 'celsius) (> temp 100))))

(defun boilingp2 (temp scale)
 (if (equal scale 'fahrenheit) (> temp 212)
  (if (equal scale 'celsius) (> temp 100))))

(defun boilingp3 (temp scale)
 (or (and (equal scale 'fahrenheit) (> temp 212))
     (and (equal scale 'celsius) (> temp 100))))
