


(defmacro variable-chain (&rest variables)
 `(progn ,@(mapcar #'(lambda (var)
                         (list 'setf var `',(second (member var variables))))
                 (reverse (rest (reverse variables))))
         t))

(defmacro variable-chain-soln (&rest variables)
 `(progn
         ,@(do ((v variables (rest v))
                (res nil))
                 ((null (rest v)) (reverse res))
                 (push `(setf ,(first v) ',(second v)) res))))
