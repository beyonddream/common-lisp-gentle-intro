


(defun compile-arc (arc)
 (let ((a (arc-action arc)))
  `((equal this-input ',(arc-label arc))
          (format t "~&~A" ,a)
    (,(node-name (arc-to arc))
     (rest input-syms)))))

(defun compile-node (node)
 (let ((name (node-name node))
       (arc-clauses
        (mapcar #'compile-arc
         (node-outputs node))))
  `(defun ,name (input-syms &aux (this-input (first input-syms)))
          (cond ((null input-syms) ',name)
                ,@arc-clauses
                (t (format t "~&There is no arc from ~A with label ~S"
                    ',name this-input))))))

(defmacro compile-machine ()
 `(progn ,@(do ((node *nodes* (rest node))
                (compiled-nodes nil))
                 ((null node) (reverse compiled-nodes))
                 (push (compile-node (first node)) compiled-nodes))))

; from the solution manual
(defmacro compile-machine2 ()
 `(progn ,@(mapcar #'compile-node *nodes*)))
