.PHONY: init-sheldon


SHELDON_PATH = $(TOP_DIR)/sheldon
DEPLOY_SHELDON_PATH = $(HOME)/.sheldon

init-sheldon: $(DEPLOY_SHELDON_PATH)

$(DEPLOY_SHELDON_PATH): $(SHELDON_PATH)
	@$(call _info,Linking $(SHELDON_PATH) ---> $(DEPLOY_SHELDON_PATH)...)
	@ln -s $< $@
