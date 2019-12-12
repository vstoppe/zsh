#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	# Install oh-my-zsh:
	echo "cloning oh-my-zsh ..."
	#sh -c "$(export RUNZSH=no; curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh > ~/install.sh
	export RUNZSH=no; cd ~; sh ~/install.sh; #rm -f ~/install.sh 

fi

if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel9k ]; then
	echo "cloning powerlevel9k-theme..."
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi

if [ -e ~/.zshrc ];then 
	rm -f ~/.zshrc;
fi

ln -s ~/.zsh/zshrc ~/.zshrc

if [ -e ~/.zshenv ]; then
	mv ~/.zsh ~/.profile_backup
fi

ln -s ~/.zshrc/zshenv ~/.zshenv


