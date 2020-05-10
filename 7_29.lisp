(setf database
 '((b1 shape brick)
   (b1 color green)
   (b1 size small)
   (b1 supported-by b2)
   (b1 supported-by b3)
   (b2 shape brick)
   (b2 color red)
   (b2 size small)
   (b2 supports b1)
   (b2 left-of b3)
   (b3 shape brick)
   (b3 color red)
   (b3 size small)
   (b3 supports b1)
   (b3 right-of b2)
   (b4 shape pyramid)
   (b4 color blue)
   (b4 size large)
   (b4 supported-by b5)
   (b5 shape cube)
   (b5 color green)
   (b5 size large)
   (b5 supports b4)
   (b6 shape brick)
   (b6 color purple)
   (b6 size large)))

(defun match-element (x y)
  (if (or (equal x y)
          (equal '? y)) t nil))

;;; take each pair from the input and match-element
(defun match-triple (assertion pattern)
    (every #'match-element assertion pattern))

(defun fetch (pattern)
  (remove-if #'null (mapcar #'(lambda (assertion)
                                (if (match-triple assertion pattern) assertion)) database)))

(defun get-pattern-color (block)
 (cons block '(color ?)))

(defun supporters (block)
  (mapcar #'third (fetch (cons block '(supported-by ?)))))

(defun supp-cube (block)
  (find-if #'(lambda (b) (and (fetch (cons b  '(shape cube))) t)) (supporters block)))

(defun desc1 (block)
 (fetch (list block '? '?)))

(defun desc2 (block)
 (mapcar #'cdr (desc1 block)))

(defun description (block)
 (reduce #'append (desc2 block)))
