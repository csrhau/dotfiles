DOTFILE_DIR:=$(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))

symlinks:
	@ln -snf  $(DOTFILE_DIR)/vim/vimrc ~/.vimrc
	@ln -snf  $(DOTFILE_DIR)/vim/vim ~/.vim
	@ln -snf  $(DOTFILE_DIR)/bin ~/.bin

all: symlinks
