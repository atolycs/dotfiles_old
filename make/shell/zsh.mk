link-zsh:
	$(info ln -s $(ZSH_DIR)/env.zsh ${HOME}/.zshenv)
	ln -s $(ZSH_DIR)/env.zsh ${HOME}/.zshenv
