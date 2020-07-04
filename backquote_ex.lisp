


(defmacro simple-incf (var &optional (amount 1))
 `(setq ,var (+ ,var ,amount)))
