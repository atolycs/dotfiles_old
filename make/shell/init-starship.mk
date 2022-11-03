STARSHIP_ENV=$(STARSHIP_DIR)/config.toml
STARSHIP_DEST=$(HOME)/.config/starship.toml

.PHONY: init-starship require-reload

init-starship: $(STARSHIP_ENV) $(STARSHIP_DEST) require-reload

$(STARSHIP_DEST): $(STARSHIP_ENV)
	@echo "$(info "Linking $< to $@")"
	@ln -s $< $@

