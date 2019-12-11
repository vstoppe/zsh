# Installation

Install the ZSH by your package manager of trust:

  ``sudo pacman -S zsh``

Then install the oh-my-zsh extensions:

  ``sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"``

Clone my git repo:

`git clone https://github.com/vstoppe/zsh.git`

# Install Powerlevel 9k theme

for a fancy shell :-)

  ``git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k``

The installation create a ~/.zshrc which we have to delete to link our own one:

  ``rm  ~/.zshrc``
  
  ``ln -s ~/.zsh/zshrc ~/.zshrc``
