


(defstruct (starship
            (:print-function print-starship))
 (captain nil)
 (name nil)
 (shields 'down)
 (condition 'green)
 (speed 0))

(defstruct (captain (:print-function print-captain))
 (name nil)
 (age nil)
 (ship nil))

(defun print-captain (x stream depth)
 (format stream "#<CAPTAIN ~S>"
  (captain-name x)))

(defun print-starship (x stream depth)
 (format stream "#<STARSHIP ~A>"
  (starship-name x)))


