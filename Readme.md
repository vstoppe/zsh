# Abstract

This is my personal zsh working environment. It integrates the oh-my-zsh framework, the Powerlevel 9k theme and a bunch of enabled plugins. It is tested on:

- Arch Linux
- Macos

# Notes

- This config has no ssh-agent configuration for Linux. In my case it is done by a [systemd service](https://wiki.archlinux.org/index.php/SSH_keys#Start_ssh-agent_with_systemd_user)

# Installation

Install the ZSH by your package manager of trust:

  ``sudo pacman -S zsh``

Clone my git repo:

`git clone https://github.com/vstoppe/zsh.git ~/.zsh`

or

`git clone git@github.com:vstoppe/zsh.git ~/.zsh`

Call

`~/.zsh/setup.sh`

This will install:

- oh-my-zsh
- Powerlevel9k theme
