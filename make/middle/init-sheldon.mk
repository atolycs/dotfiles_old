.PHONY: init-sheldon

SHELDON_PATH = $(TOP_DIR)/sheldon
DEPLOY_SHELDON_PATH = $(HOME)/.config/.sheldon
SHELDON_PLUGINLIST = $(SHELDON_PATH)/plugins.toml
DEPLOY_SHELDON_PLUGINLIST = $(DEPLOY_SHELDON_PATH)/plugins.toml

init-sheldon: $(DEPLOY_SHELDON_PLUGINLIST)

$(DEPLOY_SHELDON_PLUGINLIST): $(SHELDON_PLUGINLIST)
	@$(call _info,Linking $(SHELDON_PATH) ---> $(DEPLOY_SHELDON_PATH)...)
	@if [ ! -d $(DEPLOY_SHELDON_PATH) ];then \
		echo ";; Creating $(DEPLOY_SHELDON_PATH)"; \
		mkdir $(DEPLOY_SHELDON_PATH);\
	fi
	@ln -s $< $@
