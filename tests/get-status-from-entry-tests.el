(require 'emacs-test-explorer)

(ert-deftest get-status-from-entry-test-Y ()
  "The get-status-from-entry function should work when Y is provided"
  (should (equal "Y" (get-status-from-entry (create-explorer-entry 'Y "Description")))))

(ert-deftest get-status-from-entry-test-N ()
  "The get-status-from-entry function should work when N is provided"
  (should (equal "N" (get-status-from-entry (create-explorer-entry 'N "Description")))))

(ert-deftest get-status-from-entry-test-U ()
  "The get-status-from-entry function should work when U is provided"
  (should (equal "U" (get-status-from-entry (create-explorer-entry 'U "Description")))))

(provide 'get-status-from-entry-tests)
