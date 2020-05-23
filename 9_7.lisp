

(defun cookie-monster ()
 (format t "Give me cookie!!!~%")
 (format t "Cookie? ")
 (force-output)
 (let ((x (read)))
  (cond ((equal 'cookie x)
            (format t "Thank you!...Munch munch munch...BURP~%"))
        (t (format t "No want ~S...~%~%" x)
          (cookie-monster)))))

