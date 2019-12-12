### My favourite editor :-)
export EDITOR="nvim"

### Disable pager for systemd
export SYSTEMD_PAGER=''

### Set Socket for ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

### if Kwallet is installed then use it for sotring ssh-key passwords" 
if [ -f "`which kwalletd5`" ]; then export SSH_ASKPASS="/usr/bin/ksshaskpass"; fi

### Make ls colorful again:
alias ls="ls --color=auto"
