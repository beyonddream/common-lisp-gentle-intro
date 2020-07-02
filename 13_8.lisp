

(setf *hist-array* nil)
(setf *total-points* nil)

(defun new-histogram (no-of-bins)
 (setf *hist-array* (make-array no-of-bins :initial-element 0))
 (setf *total-points* 0))

(defun record-value (bin-index)
  (cond ((< -1 bin-index (length *hist-array*))
         (incf (aref *hist-array* bin-index))
         (incf *total-points*))
        (t (format t "~&bin-index ~S is out of range~%" bin-index)))
  (force-output))

(defun print-hist-line (bin-index)
 (let ((bin-value (aref *hist-array* bin-index)))
  (format t "~&~2D [~3D] " bin-index bin-value)
  (dotimes (i bin-value)
   (format t "*"))))

(defun print-histogram ()
 (dotimes (i (length *hist-array*))
  (print-hist-line i)
  (format t "~%"))
 (and *total-points* (format t "~&~8D total~%" *total-points*)))

