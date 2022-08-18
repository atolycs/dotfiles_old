.PHONY: check-zsh print-header check-base

define print-link
	@echo "$1  --->  $2"
endef

print-header:
	$(call _blank)
	@echo linking file
	@echo -----------------

check-base: print-header
	$(call print-link,${DIRCOLORS_DIR},${HOME}/.dircolors)

check-zsh: 
	$(call print-link,${ZSH_DIR}/env.zsh,${HOME}/.zshenv)

