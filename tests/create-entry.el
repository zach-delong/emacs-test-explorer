(require 'emacs-test-explorer)

(ert-deftest create-explorer-entry-status ()
  "testing if create explorer entry works properly"
  (should (equal 'Y (car (create-explorer-entry 'Y "Test Description"))))
  (should (equal 'N (car (create-explorer-entry 'N "Test Description"))))
  (should (equal 'U (car (create-explorer-entry 'U "Test Description"))))
  (should-error (create-explorer-entry 'A "Test Description")))

(ert-deftest crate-explorer-entry-description ()
  "Ensure the description loads correctly"
  (should (equal "Description" (car (nthcdr 1 (create-explorer-entry 'Y "Description")))))
  (should (equal () (car (nthcdr 1 (create-explorer-entry 'Y ()))))))

(provide 'create-entry)
