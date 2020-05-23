

(defun get-tree-data ()
 (with-open-file (stream "./timber.dat")
  (let* ((tree-loc (read stream))
         (tree-table (read stream))
         (num-trees (read stream)))
   (format t "~&There are ~S trees on ~S."
    num-trees tree-loc)
   (format t "~&They are: ~S" tree-table))))
