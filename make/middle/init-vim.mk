.PHONY: init-vim

VIM_PATH = $(TOP_DIR)/vim

init-vim:
	@$(call _info,Linking $(VIM_PATH)/vimrc ---> $(HOME)/.vimrc ...)
	@ln -s $(VIM_PATH)/vimrc $(HOME)/.vimrc
