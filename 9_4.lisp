


(defun ninety-nine-bottles (n)
 (cond ((zerop n) (format t "Time to shop for beer.~%"))
       (t (format t "~&~S bottles of beer on the wall,~%" n)
          (format t "~S bottles of beer!~%" n)
          (format t "Take one down,~%")
          (format t "Pass it around,~%")
          (format t "~S bottles of beer on the wall.~%~%" (- n 1))
          (ninety-nine-bottles (- n 1)))))

