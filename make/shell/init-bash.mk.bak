ZSH_ENV=$(ZSH_DIR)/env.zsh
ZSH_DEST=$(HOME)/.zshenv

.PHONY: zsh-init

zsh-init: $(ZSH_ENV) $(ZSH_DEST)

$(ZSH_ENV): 
	@echo "$(info "Generating $(ZSH_ENV) file...")"
	@$(shell echo "export ZDOTDIR=$(ZSH_DIR)" > $(ZSH_ENV))

$(ZSH_DEST): $(ZSH_ENV)
	@echo "$(info "Linking $< to $@")"
	@ln -s $< $@
