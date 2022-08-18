.PHONY: print-info print-logo print-version

print-info:
	@echo OS: ${DETECTED_OS}
	@echo RUN_USER: ${RUN_USER}
	@echo DETECT ID: ${DETECTED_ID}
	@echo SHELL: ${DETECTED_SHELL} \(${DETECTED_SHELL_PATH}\)

print-logo:
	@echo "Welcome to Atolycs "
	@echo "     _             ___ _ _"
	@echo "    | |      _    / __|_) |"
	@echo "  _ | | ___ | |_ | |__ _| | ____  ___"
	@echo " / || |/ _ \|  _)|  __) | |/ _  )/___)"
	@echo "( (_| | |_| | |__| |  | | ( (/ /|___ |"
	@echo " \____|\___/ \___)_|  |_|_|\____|___/"
	$(print-version right)

print-version:
	ifeq ($(1), right)
		@echo "                     build version: ${DOT_VERSION}"
		@echo "                     builder version: ${BUILDER_VERSION}"
	else
		@echo "build version: ${DOT_VERSION}"
		@echo "builder version: ${BUILDER_VERSION}"
	endif

		
