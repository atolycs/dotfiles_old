
.PHONY: init-dircolors
init-dircolors: $(HOME)/.dircolors

$(HOME)/.dircolors: $(DIRCOLORS_DIR)/dircolors
	@echo "$(info "linking $(DIRCOLORS_DIR)/dircolors ---> $(HOME)/.dircolors")"
	@ln -s $< $@
