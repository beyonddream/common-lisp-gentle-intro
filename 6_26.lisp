(defun right-side (features)
 (rest (member '-vs- features)))

(defun left-side (features)
 (reverse (rest (member '-vs- (reverse features)))))

(defun count-common (left-features right-features)
 (length (intersection left-features right-features)))

(defun compare (features)
 (cons (count-common (left-side features)
        (right-side features)) '(common features)))

