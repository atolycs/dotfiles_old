ZSH_ENV=$(ZSH_DIR)/env.zsh
ZSH_DEST=$(HOME)/.zshenv

.PHONY: init-zsh require-reload

init-zsh: $(ZSH_ENV) $(ZSH_DEST) require-reload

$(ZSH_ENV): 
	@echo "$(info "Generating $(ZSH_ENV) file...")"
	@$(shell echo "export ZDOTDIR=$(ZSH_DIR)" > $(ZSH_ENV))

$(ZSH_DEST): $(ZSH_ENV)
	@echo "$(info "Linking $< to $@")"
	@ln -s $< $@

require-reload:
	@echo $(info "Please reload zsh\nsource ~/.zshenv)


