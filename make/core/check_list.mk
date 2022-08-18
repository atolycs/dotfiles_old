.PHONY: list-zsh print-header list-base

define print-link
	@echo "$1  --->  $2"
endef

define print-link-blank
	@echo "   $1  --->  $2"
endef

print-header:
	$(call _blank)
	@echo linking file
	@echo -----------------

list-base: print-header
	$(call _blank)
	@echo "Base setting"
	$(call print-link-blank,${DIRCOLORS_DIR},${HOME}/.dircolors)

list-zsh: 
	$(call _blank)
	@echo "ZSH shell setting"
	$(call print-link-blank,${ZSH_DIR}/env.zsh,${HOME}/.zshenv)

