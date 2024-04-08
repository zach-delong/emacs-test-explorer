(require 'emacs-test-explorer)

(ert-deftest get-status-from-entry-test ()
    "The get-status-from-entry function should work"
    (should (equal "Y" (get-status-from-entry (create-explorer-entry 'Y "Description"))))
    (should (equal "N" (get-status-from-entry (create-explorer-entry 'N "Description"))))
    (should (equal "U" (get-status-from-entry (create-explorer-entry 'U "Description")))))

(provide 'get-status-from-entry-tests)
