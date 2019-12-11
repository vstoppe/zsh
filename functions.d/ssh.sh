### copies a pre defined bashrc file (for aliases) to a remote host and uses them
sshs() {
        ssh $@ "cat > /tmp/.bashrc_temp" < ~/.bashrc_remote
        ssh -t $@ "bash --rcfile /tmp/.bashrc_temp ; rm /tmp/.bashrc_temp"
}

### copy ssh config without extensions to destination host
sshp() {
	scp ~/.vimrc_remote  $@:/home/vst/.vimrc
	echo "if [ ! -d ~/.vim ]; then mkdir ~/.vim; fi" | ssh $@
	scp ~/.vim/common.vim \
		~/.vim/splitscreen.vim \
		~/.vim/statusline.vim \
		$@:~/.vim/
}
