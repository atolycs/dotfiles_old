.PHONY: init-kbd

init-kbd:
	@echo $(_info Linking $(TOP_DIR)/kbd/inputrc ---> $(HOME)/.inputrc)
	@$(shell ln -s $(TOP_DIR)/kbd/inputrc $(HOME)/.inputrc)

