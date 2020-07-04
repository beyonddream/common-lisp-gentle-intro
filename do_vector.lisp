

(defmacro dovector ((var vector-exp &optional result-form)
                    &body body)
 `(do* ((vec-dov ,vector-exp)
        (len-dov (length vec-dov))
        (i-dov 0 (+ i-dov 1))
        (,var nil))
        ((equal i-dov len-dov) ,result-form)
        (setf ,var (aref vec-dov i-dov))
        ,@body))

