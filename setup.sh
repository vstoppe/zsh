#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	# Install oh-my-zsh:
	echo "cloning oh-my-zsh ..."
	# This left an empty install.sh file because curl tried to connect against 192.168.3, for what reason ever...
	#sh -c "$(export RUNZSH=no; curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh > ~/install.sh
	export RUNZSH=no; cd ~; sh ~/install.sh; rm -f ~/install.sh 

fi

if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel9k ]; then
	echo "* cloning powerlevel9k-theme..."
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
else echo "* powerlevel9k-theme already installed"
fi

### Install zsh syntax highlighting plugin:
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]; then
	echo "* cloning zsh-syntax highlighting plugin from git repo"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else echo "* zsh-syntax highlighting plugin alredy installed" 
fi

if [ -e ~/.zshrc ];then 
	rm -f ~/.zshrc;
fi

ln -s ~/.zsh/zshrc ~/.zshrc


if [ `which port` ]; then
	if [ `port list py-pygments | wc -l` -eq 0 ]; then
		echo "* Installing colorize dependencies by port"
		sudo port install py-pygments
		## Activate pygments for the right python version
		PYTHON_VERSION=$(python --version | sed 's/\.//g' | cut -c 8-9)
		set -x
		sudo port select --set pygments py${PYTHON_VERSION}-pygments
		set +x
	else echo "* colorize plugin dependencies already installed"
	fi
fi
