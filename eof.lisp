
(defun read-all-objects (stream eof-indicator)
  (let ((result (read stream nil eof-indicator)))
    (if (eq result eof-indicator)
      nil
      (progn
        (format t " ~S " result)
        (cons result (read-all-objects stream eof-indicator))))))

(defun read-my-file ()
 (with-open-file (stream "./sample-file")
  (let ((contents (read-all-objects stream (list '$eof$))))
   (format t "~&Read ~S objects from file."
    (length contents))
   (force-output)
   contents)))
