(setf *crypto-text* nil)

; values are enciphers. decipher (A) => encipher (P) table
(setf *encipher-table* (make-hash-table))

; values are deciphers. encipher (P) => decipher (A) table
(setf *decipher-table* (make-hash-table))

(defun make-substitution (char-x char-y)
 (setf (gethash char-x *decipher-table*) char-y)
 (setf (gethash char-y *encipher-table*) char-x))

(defun undo-substitution (char-x)
 (let ((deciphered-value (gethash char-x *decipher-table*)))
  (setf (gethash char-x *decipher-table*) nil)
  (setf (gethash deciphered-value *encipher-table*) nil)))

(defun clear ()
 (clrhash *encipher-table*)
 (clrhash *decipher-table*)
 t)

(defun decipher-string (encoded-string)
 (let ((decoded-string (make-string (length encoded-string) :initial-element #\Space)))
  (dotimes (i (length encoded-string))
   (if (not (null (gethash (aref encoded-string i) *decipher-table*)))
    (setf (aref decoded-string i) (gethash (aref encoded-string i) *decipher-table*))))
  decoded-string))

(defun show-line (line)
  (format t "~&~S~%" line)
  (format t "~&~S~%" (decipher-string line))
  (force-output))

(defun show-text (cryptogram)
 (dolist (line cryptogram)
  (show-line line)))

(defun get-first-char (x)
  (char-downcase (char (format nil "~A" x) 0)))

(defun read-letter ()
 (let ((x (read)))
  (if (or (equal x 'end) (equal x 'undo))
   x
   (get-first-char x))))

(defun sub-letter (cipher)
  (cond ((gethash cipher *decipher-table*)
         (format t "~&'~S' has already been deciphered as '~S'!~%"
                 cipher (gethash cipher *decipher-table*)))
        (t (format t "~&What does (~S) decipher to? " cipher)
           (force-output)
           (let ((decipher (read)))
             (cond ((not (character decipher))
                    (format t "~&Not a character~%")
                    (force-output))
                   ((gethash decipher *encipher-table*)
                    (format t "~&But '~S' already deciphers to '~S'!~%"
                            (gethash decipher *encipher-table*) decipher))
                   (t (make-substitution cipher decipher)))))))

(defun undo-letter ()
 (format t "~&Undo which letter? ")
 (let ((x (read)))
  (if (gethash x *decipher-table*)
   (undo-substitution x)
   (format t "~&This character '~S' is not deciphered~%" x))))

(defun solve (cryptogram)
 (show-text)
 (force-output)
 (format t "~&Substitute which letter? ")
 (force-output)
 (let ((x (read-letter)))
  (cond ((character x)
         (sub-letter x)
         (solve cryptogram))
        ((equal x 'undo)
         (undo-letter)
         (solve cryptogram))
        ((equal x 'end)
         t)
        (t (format t "~&Couldn't recognize the input~%")
           (solve cryptogram)))))




