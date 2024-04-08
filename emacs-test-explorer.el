(defun statusp (status)
  "Ensures that the provided symbol is a valid status"
  (unless (symbolp status)
    nil)
  (if
      (or
       (eq status 'Y)
       (eq status 'N)
       (eq status 'U))
      status))

;; TODO: this should validate its inputs to make sure things make sense.
(defun create-explorer-entry (status description)
  "Create a new entry for the test explorer"

  (unless
      (statusp status)
    (error "%s is not a valid status ('Y, 'N, or 'U)" status))

  (unless
      (and
       (stringp description)
       (length> description 0))
    (error "Must enter a nonempty and non-nill string for a description"))

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
