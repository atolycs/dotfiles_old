ZSH_ENV=$(ZSH_DIR)/env.zsh
ZSH_DEST=$(HOME)/.zshenv

.PHONY: init-zsh

init-zsh: $(ZSH_ENV) $(ZSH_DEST)

$(ZSH_ENV): 
	@echo "$(info "Generating $(ZSH_ENV) file...")"
	@$(shell echo "export ZDOTDIR=$(ZSH_DIR)" > $(ZSH_ENV))

$(ZSH_DEST): $(ZSH_ENV)
	@echo "$(info "Linking $< to $@")"
	@ln -s $< $@
