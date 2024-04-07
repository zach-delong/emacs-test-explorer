(require 'emacs-test-explorer)

(ert-deftest create-explorer-entry ()
  "testing if create explorer entry works properly"
  (should (equal 'Y (car (create-explorer-entry 'Y "Test Description"))))
  (should (equal 'N (car (create-explorer-entry 'N "Test Description"))))
  (should (equal "Description" (car (nthcdr 1 (create-explorer-entry 'Y "Description"))))))

(provide 'create-entry)
