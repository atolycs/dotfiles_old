TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# DETECT OS
RUN_USER = ${USER}
DETECTED_OS = $(shell exec cat /etc/os-release | grep -E "^PRETTY_NAME=" | sed -e 's/^PRETTY_NAME=\(.*\)/\1/g')
DETECTED_ID = $(shell exec cat /etc/os-release | grep -E "^ID=" | sed -e 's/^ID=\(.*\)/\1/g')
DETECTED_SHELL_PATH = $(shell exec cat /etc/passwd | grep "${RUN_USER}" | awk -F':' '{print $$7}')
DETECTED_SHELL = $(shell basename ${DETECTED_SHELL_PATH})

ZSH_DIR = $(TOP_DIR)/zsh
STARSHIP_DIR = $(TOP_DIR)/starship
MKMODULE_DIR = $(TOP_DIR)/make
DIRCOLORS_DIR = $(TOP_DIR)/dircolors

all: help

-include ${MKMODULE_DIR}/*/*.mk

.PHONY: greeting link
greeting: print-welcome-message print-logo print-version_right print-info

link: greeting init-base init-${DETECTED_ID} init-${DETECTED_SHELL} print-end

info: print-info

update:
	@$(call _info,Updating dotfiles...)
	@$(shell git pull)
