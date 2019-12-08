#!/bin/bash

if [ -d "$HOME/.oh-my-zsh" ]; then
	# Install oh-my-zsh:
	echo "removing ~/.oh-my-zsh ..."
	rm -rf ~/.oh-my-zsh
	echo "cloning oh-my-zsh ..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	echo "cloning powerlevel9k-theme..."
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

	if [ -e ~/.zshrc ];then 
		rm ~/.zshrc;
		ln -s ~/.zsh/zshrc ~/.zshrc
	fi

	if [ -e ~/.zshenv ]; then
		mv ~/.zsh ~/.profile_backup
		ln -s ~/.zshrc/zshenv ~/.zshenv
	fi
fi


if [ -e "$HOME/.zshrc" ]; then
	echo "linking ~/.zsh/zshrc to ~/.zshrc"
	rm ~/.zshrc
	ln -s ~/.zsh/zshrc ~/.zshrc
fi
