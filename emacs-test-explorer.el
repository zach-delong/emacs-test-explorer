
(defun create-explorer-entry (status description)
  "Create a new entry for the test explorer"
  (list status description))

(defun get-status-from-entry (entry)
  "Get the status from an entry"
  (symbol-name (car entry)))

(defun get-description-from-entry (entry)
  "Get the description from an entry"
  (car (nthcdr 1 entry)))


(defun entry-to-string (entry)
  "Turn the entry into a string that can be appended into a buffer"
  (concat
   (get-status-from-entry entry)
   " - "
   (get-description-from-entry entry)))

(defun emacs-teste-explorer ()
  "attempts to define a test explorer"
  (interactive))

(provide 'emacs-test-explorer)
