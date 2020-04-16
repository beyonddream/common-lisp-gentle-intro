(setf books
 '((war-and-peace leo-tolstoy)
         (remains-of-the-day kazuo-ishiguro)
         (daisy-miller henry-james)
         (midnights-children salman-rushdie)
         (ghostwritten david-mitchell)))



(defun who-wrote (title)
 (second (assoc title books)))



