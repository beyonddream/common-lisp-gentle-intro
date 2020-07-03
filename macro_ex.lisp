

(defmacro simple-incf (var &optional (amount 1))
 (list 'setq var (list '+ var amount)))
