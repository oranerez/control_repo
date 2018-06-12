class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBXvlVkk/LvPnlc/lDC3bReGBCD/9zkByHNpnlT4LKbxwBW3nKy2xqnMbyn/dBDQtqj3PZtX62ZFV5jghmZViXvYrWXjSd46iuo7xw6mpbRcsM27b0iW9AEqtCGutHzIor9m0+VAuKEEULeLqPnN0bzIRZVVCI7Uuo4mAh+0SNO6v1qCLYv05np2/hRh2j3L91NyRGduCbTzcY7hbcVnqbK8xHv6iUnqyhJh/Nx1wtvf5mF/U4OkL/UDEoOM+Q/M+hkhzb0S4XagPrBpQuA4j01zAWnBOsJdy0eT+0qAFpkRJUuewniWO36qHkRMhqqMrmO+seYhhhlKUcOrFACGE1',
	}  
}
