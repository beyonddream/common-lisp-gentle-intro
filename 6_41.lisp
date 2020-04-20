(setf rooms
      '((living-room (north front-stairs)
                     (south dining-room)
                     (east kitchen))
        (upstairs-bedroom (west library)
                          (south front-stairs))
        (dining-room (north living-room)
                     (east pantry)
                     (west downstairs-bedroom))
        (kitchen (west living-room)
                 (south pantry))
        (pantry (north kitchen)
                (west dining-room))
        (downstairs-bedroom (north back-stairs)
                            (east dining-room))
        (back-stairs (south downstairs-bedroom)
                     (north library))
        (front-stairs (north upstairs-bedroom)
                      (south living-room))
        (library (east upstairs-bedroom)
                 (south back-stairs))))


(defun choices (room)
 (cdr (assoc room rooms)))

(defun look (direction room)
 (second (assoc direction (choices room))))

(defun set-robbie-location (place)
 "Moves Robbie to PLACE by setting the variable LOC."
 (setf loc place))

(set-robbie-location 'pantry)

(defun how-many-choices ()
 (length (choices loc)))

(defun upstairsp (location)
 (or (equal location 'library)
     (equal location 'upstairs-bedroom)))

(defun onstairsp (location)
 (or (equal location 'front-stairs)
     (equal location 'back-stairs)))

(defun where ()
 (let ((up-or-down (if (upstairsp loc) 'upstairs 'downstairs)))
  (list 'robbie 'is up-or-down 'in 'the loc)))

(defun move (direction)
 (let ((new-room (look direction loc)))
  (if new-room
     (and (set-robbie-location new-room)
          (where))
     (list 'ouch! 'robbie 'hit 'a 'wall))))




