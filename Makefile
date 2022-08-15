TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

ZSH_DIR = $(TOP_DIR)/zsh
MKMODULE_DIR = $(TOP_DIR)/make
DIRCOLORS_DIR = $(TOP_DIR)/dircolors

-include $(MKMODULE_DIR)/*.mk



all: dotfiles

linkecho:
	echo ln -s $1 $2


link-sheldon:
link-zsh:
link-dircolors:
dotfiles: link-dircolors 

info:

linkall: link-sheldon link-zsh link-dircolors
