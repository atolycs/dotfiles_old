.PHONY: help

define _help
	@echo "help	Print This help"
	@echo "link 	Setup dotfiles"
	@echo "info	Print Your System info"
endef


help: print-logo print-version_right ## Print this help
	@$(call _blank)
	@$(call _help)
