! Installation

Zuerst muss müssen die oh-my-zsh erweiterungen installiert werden.

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Jetzt wird das eigene Repo installiert.

`git clone http://gitlab.lindenbox.de/vst/zsh.git ~/.zsh`

! Powerlevel 9k Theme installieren

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

Die installation erzeugt eine .zshrc die wir löschen um sie durch eine eigene .zshrc zu ersetzen

`rm  ~/.zshrc`


`ln -s ~/.zsh/zshrc ~/.zshrc`