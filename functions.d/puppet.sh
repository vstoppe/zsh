#### decripple puppet: call r10k on puppet host
funktion pr10k(){
	echo "sudo /opt/puppetlabs/puppet/bin/r10k deploy environment --puppetfile" | ssh puppet
}

#### decripple puppet: execute puppet agent on remote host:
function pagent(){
	echo "sudo /opt/puppetlabs/bin/puppet agent -t" | ssh $1
}
