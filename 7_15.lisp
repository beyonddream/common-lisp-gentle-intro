

(defun rank (card)
 (first card))

(defun suit (card)
 (second card))

(setf my-hand
 '((3 hearts)
   (5 clubs)
   (2 diamonds)
   (4 diamonds)
   (ace spades)))

(defun count-suit (suit cards)
  (length (remove-if-not #'(lambda (card)
                             (equal suit (suit card))) cards)))

(setf colors
 '((clubs black)
   (diamonds red)
   (hearts red)
   (spades black)))

(defun color-of (card)
 (second (assoc (suit card) colors)))

(defun first-red (cards)
 (find-if #'(lambda (card)
             (equal (color-of card) 'red)) cards))

(defun black-cards (cards)
  (remove-if-not #'(lambda (card)
                     (equal (color-of card) 'black)) cards))

(defun what-ranks (suit cards)
  (mapcar #'rank (remove-if-not #'(lambda (card)
                                    (equal (second card) suit)) cards)))

(setf all-ranks '(2 3 4 5 6 7 8 9 10 jack queen king ace))

(defun beforep (x y l)
 (member y (member x l)))

(defun higher-rank-p (card-a card-b)
 (and (beforep (rank card-b) (rank card-a) all-ranks) t))

(defun high-card (cards)
  (assoc (find-if #'(lambda (card)
                      (assoc card cards)) (reverse all-ranks)) cards))



