# LANG export kann für Remote-Login notwendig sein
export LANG="de_DE.UTF-8"
export TERM=xterm-256color

# without the ZSH_COMPDUMP export zsh may through bad math expression: illegal character exceptions
export ZSH_COMPDUMP=/tmp/zcompdump-$USER

# RBENV_ROOT für Powerline-Plugin setzen
export RBENV_ROOT=$HOME/.rbenv

# If you come from bash you might have to change your $PATH.
# /opt/local/libexec/gnubin/: pfad zu den gnu coreutils
export PATH="$HOME/.rbenv/bin:$HOME/bin:/opt/local/libexec/gnubin/:/usr/local/bin:/opt/local/bin:/opt/puppetlabs/pdk/bin:$PATH"

#export DOCKER_HOST="tcp://docker:4243"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

### Powerline Konfiguration
POWERLINE_RIGHT_A="exit-status"
POWERLINE_RIGHT_B="time replacement"
POWERLINE_RIGHT_C="pyenv"
#POWERLINE_RIGHT_B="date" #  time replacement exit-status"
POWERLINE_NO_BLANK_LINE="true"
#POWERLINE_RIGHT_B="none"
POWERLINE_SHORT_HOST_NAME="true"
POWERLINE_PATH="short"
POWERLINE_DETECT_SSH="true"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerline"
#ZSH_THEME="agnoster"
source ~/.zsh/powerlevel9k.cfg

# Base16 Shell
BASE16_SHELL="$HOME/.zsh/oceanic-next-shell/oceanic-next.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL



# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(docker gem git github gpg-agent macports osx rails rbenv ruby screen ssh-agent svn systemd vagrant)
plugins=(ansible docker gem git github gpg-agent macports minikube osx rails rbenv ruby screen svn systemd vagrant )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#eval $(ssh-agent) ssh-add


### Source in extra aliases
for file in ~/.zsh/*.aliases; do source $file; done
### Source in extra functions
source ~/.zsh/functions.d/*
source ~/.oh-my-zsh/plugins/z/z.sh


if [ -e ~/.rbenv/bin/rbenv ]; then eval "$(rbenv init -)"; fi


# source ~/.zsh/profile
### Nachladen von xmodmap Einstellungen:
# * Vertasuchen von <> und ^°

if [[ `uname -s` == *"Linux"* ]]; then
	# Switch von ESC und Caps lock
	if [ -e '/usr/bin/setxkbmap' ]; then /usr/bin/setxkbmap -option "caps:swapescape"; fi
	if [ -e '/usr/bin/xmodmap' ]; then xmodmap ~/.zsh/xmodmap-linux.cfg; fi
fi

source ~/.zsh/zshenv

eval "$(ssh-agent)"
ssh-add -K
