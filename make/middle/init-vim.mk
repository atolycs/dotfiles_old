.PHONY: init-vim

VIMRC_PATH = $(TOP_DIR)/vim/vimrc
DEPLOY_VIMRC_PATH = $(HOME)/.vimrc

init-vim: $(DEPLOY_VIMRC_PATH)

$(DEPLOY_VIMRC_PATH): $(VIMRC_PATH)
	@$(call _info,Linking $$< ---> $$@ ...)
	@ln -s $< $@
