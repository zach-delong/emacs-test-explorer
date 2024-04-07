(require 'emacs-test-explorer)

(setq entry '(Y "Description"))

(message "%s" (get-status-from-entry entry))
(message "%s" (get-description-from-entry entry))

(message "%s" (entry-to-string entry))


(ert-deftest create-explorer-entry ()
  "testing if create explorer entry works properly"
  (should (equal 'Y (car (create-explorer-entry 'Y "Test Description"))))
  (should (equal 'N (car (create-explorer-entry 'N "Test Description")))))

(provide 'create-entry)
