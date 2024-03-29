### My favourite editor :-)
export EDITOR="vim"

### Disable pager for systemd
export SYSTEMD_PAGER=''

### Set Socket for ssh-agent
# (worked on Arch noch don Debian anymore)
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

### provide $HOSTNAME like in BASH
export HOSTNAME=`hostname`

### If we are under Linux / we have /etc/profile.d I want to get these variables:
if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi


DOCKER_VAR_FILE="$HOME/workspace/docker/etc/$HOSTNAME.env"
if [ -e $DOCKER_VAR_FILE  ]; then
	source $DOCKER_VAR_FILE
	export $(cut -d= -f1 $DOCKER_VAR_FILE)
fi


### if Kwallet is installed then use it for sotring ssh-key passwords"
if [ -f "`which kwalletd5`" ]; then export SSH_ASKPASS="/usr/bin/ksshaskpass"; fi


if [ "$(hostname)" = "irix" ]; then export LIBVIRT_DEFAULT_URI='qemu:///system'; fi
