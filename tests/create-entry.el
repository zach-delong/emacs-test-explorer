(require 'emacs-test-explorer)

(ert-deftest create-explorer-entry-status-Y ()
  "testing if create explorer entry works properly"
  (should (equal 'Y (car (create-explorer-entry 'Y "Test Description")))))

(ert-deftest create-explorer-entry-status-N ()
  "testing if create explorer entry works properly"
  (should (equal 'N (car (create-explorer-entry 'N "Test Description")))))

(ert-deftest create-explorer-entry-status-U ()
  "testing if create explorer entry works properly"
  (should (equal 'U (car (create-explorer-entry 'U "Test Description"))))
  (should-error (create-explorer-entry 'A "Test Description")))

(ert-deftest create-explorer-entry-status-random ()
  "testing if create explorer entry works properly"
  (should-error (create-explorer-entry 'A "Test Description")))

(ert-deftest create-explorer-entry-description-standard ()
  "Ensure the description loads correctly"
  (should (equal "Description" (car (nthcdr 1 (create-explorer-entry 'Y "Description"))))))

(ert-deftest create-explorer-entry-description-nil()
  "Ensure the description loads correctly"
  (should-error (car (nthcdr 1 (create-explorer-entry 'Y ())))))

(ert-deftest create-explorer-entry-description-empty()
  "Ensure the description loads correctly"
  (should-error (car (nthcdr 1 (create-explorer-entry 'Y "")))))

(provide 'create-entry)
