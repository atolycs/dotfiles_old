.PHONY: init-git

GIT_HOOKS :=$(TOP_DIR)/git_hooks
GIT_TEMPLATE_DIR := $(HOME)/git_template

init-git: $(GIT_HOOKS)

$(GIT_HOOKS): $(HOME)/git_template/hooks
	ln -s $@ $<
	git config --global init.templatedir $(GIT_TEMPLATE_DIR)

$(GIT_TEMPLATE_DIR)/hooks: 
	mkdir -p $(GIT_TEMPLATE_DIR)

