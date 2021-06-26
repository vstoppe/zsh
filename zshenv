### My favourite editor :-)
export EDITOR="nvim"

### Disable pager for systemd
export SYSTEMD_PAGER=''

### Set Socket for ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

### provide $HOSTNAME like in BASH
export HOSTNAME=`hostname`

### If we are under Linux / we have /etc/profile.d I want to get these variables:
test -d /etc/profile.d && ls /etc/profile.d | while read file; do  source /etc/profile.d/$file; done

if [ -e $HOME/workspace/docker/etc/$HOSTNAME.env ]; then export $(cut -d= -f1 $HOME/workspace/docker/etc/$HOSTNAME.env); fi

### if Kwallet is installed then use it for sotring ssh-key passwords"
if [ -f "`which kwalletd5`" ]; then export SSH_ASKPASS="/usr/bin/ksshaskpass"; fi


if [ "$(hostname)" = "irix" ]; then export LIBVIRT_DEFAULT_URI='qemu:///system'; fi
