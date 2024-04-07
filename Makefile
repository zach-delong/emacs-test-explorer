EMACS ?= emacs

TEST_DIR=$(shell pwd)/tests

# Run all tests by default.
MATCH ?=

.PHONY: test

test:
	$(EMACS) --batch -L . -L $(TEST_DIR) -l all-tests.el -eval '(ert-run-tests-batch-and-exit "$(MATCH)")'
