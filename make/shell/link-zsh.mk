ZSH_ENV=$(ZSH_DIR)/env.zsh
ZSH_DEST=$(HOME)

.PHONY: zsh-init
zsh-init: $(HOME)/.zshenv

$(HOME)/.zshenv: $(ZSH_ENV)
	$(info ln -s $@ $<)
	ln -s $< $@
