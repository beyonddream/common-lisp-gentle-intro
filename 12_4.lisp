(defstruct node
 (name)
 (question)
 (yes-case)
 (no-case))

(setf *node-list* nil)

(defun init ()
 (setf *node-list* nil)
 'initialized)

(defun add-node (name question yes-case no-case)
  (setf *node-list* (cons (make-node
                            :name name
                            :question question
                            :yes-case yes-case
                            :no-case no-case) *node-list*))
  name)

(defun find-node (name)
 (find-if #'(lambda (node)
             (equal (node-name node) name))
  *node-list*))

(defun process-node (name)
 (do ((node (find-node name)))
  ((null node) nil)
  (if (yes-or-no-p
       (node-question node))
   (return (node-yes-case node))
   (return (node-no-case node)))))

(defun run ()
 (do ((current-node (process-node 'start) (process-node current-node)))
  ((null current-node) nil)
  (if (and (not (find-node current-node)) (stringp current-node))
   (return (format t "~&~A~%" current-node)))))


(defun add-new-node ()
  (do ((name nil)
       (question nil)
       (yes-case nil)
       (no-case nil))
    (nil)
    (format t "~&What is the name ? ")
    (force-output)
    (setf name (read))
    (format t "~&What is the question ? ")
    (force-output)
    (setf question (read))
    (format t "~&What is the yes-case ? ")
    (force-output)
    (setf yes-case (read))
    (format t "~&What is the no-case ? ")
    (force-output)
    (setf no-case (read))
    (add-node name question yes-case no-case)
    (return)))








;;;; Initialization

(add-node 'start
          "Does the engine turn over?"
          'engine-turns-over
          'engine-wont-turn-over)

(add-node 'engine-turns-over
          "Will the engine run for any period of time?"
          'engine-will-run-briefly
          'engine-wont-run)

(add-node 'engine-wont-run
          "Is there gas in the tank?"
          'gas-in-tank
          "Fill the tank and try starting the engine again.")

(add-node 'engine-wont-turn-over
          "Do you hear any sound when you turn the key?"
          'sound-when-turn-key
          'no-sound-when-turn-key)

(add-node 'no-sound-when-turn-key
          "Is the battery voltage low?"
          "Replace the battery"
          'battery-voltage-ok)

(add-node 'battery-voltage-ok
          "Are the battery cables dirty or loose?"
          "Clean the cables and tighten the connections."
          'battery-cables-good)
