# LANG export kann für Remote-Login notwendig sein
export LANG="de_DE.UTF-8"
export TERM=xterm-256color

# without the ZSH_COMPDUMP export zsh may through bad math expression: illegal character exceptions
export ZSH_COMPDUMP=/tmp/zcompdump-$USER

# If you come from bash you might have to change your $PATH.
# /opt/local/libexec/gnubin/: pfad zu den gnu coreutils
export PATH="$HOME/bin:/opt/local/libexec/gnubin/:/usr/local/bin:/opt/local/bin:$PATH"


# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

### Powerline configuration:
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



# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30


# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(ansible colored-man-pages docker gem git github gpg-agent minikube rails screen svn vagrant)


source $ZSH/oh-my-zsh.sh


### Source in aliases. This way we can differentiate between general aliases and those for special environments:
source ~/.zsh/alias.d/*
# Source in extra shell functions
source ~/.zsh/functions.d/*
source ~/.oh-my-zsh/plugins/z/z.sh
### Seperate environment file for zsh:
source ~/.zsh/zshenv
source ~/.zsh/puppet.cfg
#if [[ "$OSTYPE" = darwin* ]]; then source macos.cfg; fi

case $OSTYPE in
	darwin*)   source ~/.zsh/macos.cfg;;
	linux-gnu) source ~/.zsh/linux.cfg;;
esac
