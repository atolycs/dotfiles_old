.PHONY: init-git commit_msg

GIT_HOOKS :=$(TOP_DIR)/git_hooks
GIT_TEMPLATE_DIR := $(HOME)/git_template
GIT_COMMIT_MESSAGE := $(TOP_DIR)/commit_template

init-git: $(GIT_HOOKS)
commit_msg: $(GIT_TEMPLATE_DIR)/commit_msg

$(GIT_HOOKS): $(HOME)/git_template/hooks
	ln -s $@ $<
	git config --global init.templatedir $(GIT_TEMPLATE_DIR)

$(GIT_TEMPLATE_DIR)/hooks: 
	mkdir -p $(GIT_TEMPLATE_DIR)

$(GIT_TEMPLATE_DIR)/commit_msg: $(GIT_COMMIT_MESSAGE)
	ln -s $< $@
	git config --global commit.template .git/commit_msg

