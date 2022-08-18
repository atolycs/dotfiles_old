.PHONY: _skip print-info print-logo print-version_right print-version print-welcome-message _blank

define _blank
	@$(MAKE) -s _blank
endef

define _info
	@echo $(info $1)
endef

_blank:
	@echo ""

_skip: ;

print-info:
	$(call _blank)
	@echo Your system is ...
	@echo OS: ${DETECTED_OS}
	@echo RUN_USER: ${RUN_USER}
	@echo DETECT ID: ${DETECTED_ID}
	@echo SHELL: ${DETECTED_SHELL} \(${DETECTED_SHELL_PATH}\)

print-version_right:
	@echo "                     build version: ${DOT_VERSION}"
	@echo "                     builder version: ${BUILDER_VERSION}"

print-version:
	@echo "build version: ${DOT_VERSION}"
	@echo "builder version: ${BUILDER_VERSION}"

print-welcome-message:
	@echo "Welcome to Atolycs  "

print-logo:
	@echo "     _             ___ _ _"
	@echo "    | |      _    / __|_) |"
	@echo "  _ | | ___ | |_ | |__ _| | ____  ___"
	@echo " / || |/ _ \|  _)|  __) | |/ _  )/___)"
	@echo "( (_| | |_| | |__| |  | | ( (/ /|___ |"
	@echo " \____|\___/ \___)_|  |_|_|\____|___/"


print-end: 
	@echo "Thank you run this program"
	@echo "Let's Happy Hacking!"
