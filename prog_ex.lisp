


(prog1 (setf x 'foo)
       (setf x 'bar)
       (setf x 'baz)
       (format t "~&X is ~S" x))

(prog2 (setf x 'foo)
       (setf x 'bar)
       (setf x 'baz)
       (format t "~&X is ~S" x))

(progn (setf x 'foo)
       (setf x 'bar)
       (setf x 'baz)
       (format t "~&X is ~S" x))


