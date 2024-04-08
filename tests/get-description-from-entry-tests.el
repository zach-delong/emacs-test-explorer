(require 'emacs-test-explorer)

(ert-deftest get-description-from-entry-test ()
    "The get-description-from-entry function should work"
    (should (equal "Description" (get-description-from-entry (create-explorer-entry 'Y "Description"))))
    (should (equal "Nonsense" (get-description-from-entry (create-explorer-entry 'N "Nonsense"))))
    (should-error (get-description-from-entry (create-explorer-entry 'U ""))))

(provide 'get-description-from-entry-tests)
