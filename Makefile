DOTFILE_DIR:=$(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))

all: symlinks gitcfg 

.PHONY: symlinks
symlinks:
	@echo Linking dotfiles
	@ln -snf  $(DOTFILE_DIR)/vim/vimrc ~/.vimrc
	@ln -snf  $(DOTFILE_DIR)/vim/vim ~/.vim
	@ln -snf  $(DOTFILE_DIR)/tmux/tmux.conf ~/.tmux.conf
	@ln -snf  $(DOTFILE_DIR)/tmux/tmux-osx.conf ~/.tmux-osx.conf
	@ln -snf  $(DOTFILE_DIR)/bin ~/bin


.PHONY: gitcfg
gitcfg:
	@echo Configuring git
	@git config --global user.name "Stephen Roberts"
	@git config --global user.email "stephenianroberts@gmail.com"
	@git config --global core.editor "vim"
	@git config --global color.ui auto
	@git config --global push.default simple
	@git config --global credential.https://github.com.username csrhau
