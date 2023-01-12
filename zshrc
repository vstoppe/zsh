# LANG export kann für Remote-Login notwendig sein
export LANG="de_DE.UTF-8"
export TERM=xterm-256color

# without the ZSH_COMPDUMP export zsh may through bad math expression: illegal character exceptions
export ZSH_COMPDUMP=/tmp/zcompdump-$USER

# If you come from bash you might have to change your $PATH.
# /opt/local/libexec/gnubin/: pfad zu den gnu coreutils
export PATH="$HOME/.local/bin:$HOME/bin:/opt/local/libexec/gnubin/:/usr/local/bin:/opt/local/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
if [ -d $HOME/Library/Python/3.9/bin/ ]; then export PATH=$PATH:$HOME/Library/Python/3.9/bin/; fi

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

### Powerline configuration:
POWERLINE_DETECT_SSH="false"
POWERLINE_NO_BLANK_LINE="true"
POWERLINE_PATH="short"
#POWERLINE_RIGHT_A="exit-status"
POWERLINE_RIGHT_A="status virtualenv exit-status"
POWERLINE_RIGHT_B="time replacement"
# pyenv seems to slow down things:
#POWERLINE_RIGHT_C="pyenv"
POWERLINE_SHORT_HOST_NAME="true"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

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
plugins=(ansible colorize colored-man-pages docker gem git github gpg-agent helm kubectl kube-ps1 minikube rails screen svn vagrant virtualenv)
#plugins=()

source ~/.oh-my-zsh/plugins/z/z.sh
source ~/.zsh/alias.d/* # Source in aliases.
source ~/.zsh/functions.d/*.cfg
source ~/.zsh/powerlevel9k.cfg
source ~/.zsh/puppet.cfg
source ~/.zsh/zshenv # Seperate environment file for zsh:

### Source in aliases
# source ~/.zsh/alias.d/* # Source in aliases. # <- this only works for the first file. 2nd file ignored
for file in `find ~/.zsh/alias.d -type f`; do source $file; done


case $OSTYPE in
	darwin*)   source ~/.zsh/macos.cfg;;
	linux-gnu) source ~/.zsh/linux.cfg;;
esac


# ZSH syntax highlighting must be activated after all other plugins:
export plugins=($plugins zsh-syntax-highlighting)


### oh-my-zsh has to be sourced after
# * the osx plugin or we don't get a fancy promt...
# * and ssh-agent
# https://stackoverflow.com/questions/15682456/oh-my-zsh-config-file-not-loading/15882090#15882090
source $ZSH/oh-my-zsh.sh


### Setup iterm2 integration
# Source iTerm2 integration
test -e ~/.iterm2_shell_integration.zsh && source /Users/vst/.iterm2_shell_integration.zsh || true
source ~/.zsh/iterm2.cfg

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/vst/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

### FZF settings:

source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
