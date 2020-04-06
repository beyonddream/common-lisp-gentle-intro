(defun contains-article-p (s)
 (intersection s '(the a an)))

(defun contains-article-p-v2 (s)
 (or
  (member 'a s)
  (member 'the s)
  (member 'an s)))

(defun contains-article-p-v3 (s)
 (not (and
       (not (member 'a s))
       (not (member 'the s))
       (not (member 'an s)))))
