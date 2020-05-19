


(defun legalp (exp)
 (cond ((numberp exp) t)
       ((atom exp) nil)
       (t (and (legalp (first exp))
               (member (second exp) '(+ - * /))
               (legalp (third exp))))))
