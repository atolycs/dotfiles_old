.PHONY: init-nvim

VIMRC_PATH = $(TOP_DIR)/nvim
DEPLOY_VIMRC_PATH = $(HOME)/.config/nvim

init-nvim: $(DEPLOY_VIMRC_PATH)

$(DEPLOY_VIMRC_PATH): $(VIMRC_PATH)
	@$(call _info,Linking $$< ---> $$@ ...)
	@ln -s $< $@
