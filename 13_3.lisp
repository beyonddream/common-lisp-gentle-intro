


(defun my-get (sym prop)
 (do ((plist (symbol-plist sym) (rest plist)))
  ((eq (first plist) prop) (return (second plist)))))
