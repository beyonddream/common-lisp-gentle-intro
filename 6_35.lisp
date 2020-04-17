;; Nerdus Americanis
;; or Computerus Hackerus

; sleeping, eating, waiting-for-a-computer, programming, debugging

; implemented using tables but can use set ds/member function
(setf nerd-states
 '((sleeping eating)
   (eating waiting-for-a-computer)
   (waiting-for-a-computer programming)
   (programming debugging)
   (debugging sleeping)))

(defun nerdus (current_state)
 (second (assoc current_state nerd-states)))

(defun sleepless-nerd (current_state)
 (let ((y (nerdus current_state)))
  (if (equal 'sleeping y)
      (nerdus y)
      y)))

(defun nerd-on-caffeine (current_state)
 (nerdus (nerdus current_state)))
