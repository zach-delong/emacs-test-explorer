(require 'emacs-test-explorer)

(ert-deftest entry-to-string-basic ()
  "The entry-to-string function should work with correct input"
  (should (equal "Y - Description" (entry-to-string (create-explorer-entry 'Y "Description")))))

(ert-deftest entry-to-string-failed-test()
  "The entry-to-string function should work with correct input"
  (should (equal "N - Description" (entry-to-string (create-explorer-entry 'N "Description")))))

(provide 'entry-to-string-tests)
