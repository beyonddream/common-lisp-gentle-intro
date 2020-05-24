

(defun save-tree-data (tree-loc tree-table num-trees)
 (with-open-file (stream "./timber.newdat" :direction :output)
  (format stream "~S~%" tree-loc)
  (format stream "~S~%" tree-table)
  (format stream "~S~%" num-trees)))

