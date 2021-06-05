# Abstract

This is my personal zsh working environment. It integrates the 
* [oh-my-zsh framework](https://github.com/ohmyzsh/ohmyzsh)
* [Powerlevel 9k theme](https://github.com/Powerlevel9k/powerlevel9k)
* [zsh syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
* and a bunch of other plugins. 

It is tested on:

- Arch Linux
- Macos

# Notes

- This config has no ssh-agent configuration for Linux. In my case it is done by a [systemd service](https://wiki.archlinux.org/index.php/SSH_keys#Start_ssh-agent_with_systemd_user). In this way it works easy for kwallet to manage my ssh-key passphrase.
- This prompt might not show correct glyphs. It needs fonts with glyphs. It works with [Mononoki Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Mononoki)

# Installation

Install the ZSH by your package manager of trust:

  `sudo pacman -S zsh`
  
  or
  
  `sudo apt install zsh`
  
Clone my git repo:

`git clone https://github.com/vstoppe/zsh.git ~/.zsh`

or

`git clone git@github.com:vstoppe/zsh.git ~/.zsh`

Call

`~/.zsh/setup.sh`

This will install:

- oh-my-zsh
- Powerlevel9k theme
