node 'puppet.learn.com' {
	package {'vim-enhanced.x86_64':
		ensure => present,
	}
}

node '0.pagent.vb.com' {
	include sudo
}
