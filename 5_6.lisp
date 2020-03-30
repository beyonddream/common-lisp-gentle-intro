(defun throw-die ()
 (+ 1 (random 6)))

(defun throw-dice ()
 (list (throw-die) (throw-die)))

(defun snake-eyes-p (throw)
 (let ((f (first throw))
       (s (second throw)))
  (and (equal 1 f)
       (equal 1 s))))

(defun boxcars-p (throw)
 (let ((f (first throw))
       (s (second throw)))
  (and (equal 6 f)
       (equal 6 s))))

(defun instant-win-p (throw)
 (let ((total (+ (first throw) (second throw))))
  (or (equal 7 total) (equal 11 total))))

(defun instant-loss-p (throw)
 (let ((total (+ (first throw) (second throw))))
  (or (equal 2 total) (equal 3 total) (equal 12 total))))

(defun say-throw (throw)
 (cond ((snake-eyes-p throw) 'snake-eyes)
       ((boxcars-p throw) 'boxcars)
       (t (+ (first throw) (second throw)))))

(defun craps ()
 (let* ((throw (throw-dice))
        (f (first throw))
        (s (second throw))
        (total (+ f s))
        (say-lose (list 'throw f 'and s '-- (say-throw throw) '-- 'you 'lose))
        (say-win (list 'throw f 'and s '-- (say-throw throw) '-- 'you 'win))
        )
  (cond ((instant-loss-p throw) say-lose)
        ((instant-win-p throw) say-win)
        (t (try-for-point total)))))

(defun try-for-point (point)
 (let* ((throw (throw-dice))
        (f (first throw))
        (s (second throw))
        (total (+ f s))
        (say-lose (list 'throw f 'and s '-- (say-throw throw) '-- 'you 'lose))
        (say-win (list 'throw f 'and s '-- (say-throw throw) '-- 'you 'win))
        )
    (cond ((equal point total) say-win (craps))
          ((equal 7 total) say-lose (craps))
          (t (try-for-point point)))))






