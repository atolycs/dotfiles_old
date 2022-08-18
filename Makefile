TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# DETECT OS
RUN_USER = ${USER}
DETECTED_OS = $(shell exec cat /etc/os-release | grep -E "^PRETTY_NAME=" | sed -e 's/^PRETTY_NAME=\(.*\)/\1/g')
DETECTED_ID = $(shell exec cat /etc/os-release | grep -E "^ID=" | sed -e 's/^ID=\(.*\)/\1/g')
DETECTED_SHELL_PATH = $(shell exec cat /etc/passwd | grep "${RUN_USER}" | awk -F':' '{print $$7}')
DETECTED_SHELL = $(shell basename ${DETECTED_SHELL_PATH})

ZSH_DIR = $(TOP_DIR)/zsh
MKMODULE_DIR = $(TOP_DIR)/make
DIRCOLORS_DIR = $(TOP_DIR)/dircolors

-include ${MKMODULE_DIR}/*/*.mk

#all: dotfiles

#linkecho:
#	echo ln -s $1 $2

#link-sheldon:
#link-zsh:
#link-dircolors:
#dotfiles: link-dircolors 
#.PHONY: info link link-${DETECTED_ID} greeting _waiting dd_test

#_waiting:
#	@echo "Setup start after 5sec..."
#	@$(shell sleep 5s)

#greeting: print-welcome-message print-logo print-version_right print-info

#list: list-base list-${DETECTED_SHELL}

#link: greeting list _waiting link-base link-${DETECTED_ID}
