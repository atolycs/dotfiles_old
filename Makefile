TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))


link:
	@echo "${TOP_DIR}"

brew:
	@echo "BREW INSTALL"

