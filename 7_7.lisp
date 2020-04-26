(defun flip-element (list)
  (mapcar #'(lambda (x)
              (if (equal x 'up) 'down
                (if (equal x 'down) 'up))) list))


