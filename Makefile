DOTFILE_DIR:=$(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))

all: symlinks gitcfg 

.PHONY: symlinks
symlinks:
	@echo Linking dotfiles
	@ln -snf  $(DOTFILE_DIR)/vim/vimrc ~/.vimrc
	@ln -snf  $(DOTFILE_DIR)/vim/vim ~/.vim
	@ln -snf  $(DOTFILE_DIR)/bin ~/bin

.PHONY: gitcfg
gitcfg:
	@echo Configuring git
	@git config --global user.name "Stephen Roberts"
	@git config --global user.email "stephenianroberts@gmail.com"
	@git config --global core.editor "vim"
	@git config --global color.ui auto
