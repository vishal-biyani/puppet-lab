class sudo {
	package {'sudo':
		ensure => present,
	}

	if $::osFamily == 'Debian'{
		package {'sudo-ldap':
			ensure 	=> present,
			require => Package['Sudo'],
		}
	}
	file {'/etc/sudoers':
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'0440',
		source	=>	'puppet:///modules/sudo/etc/sudoers',
		require	=>	Package['sudo'],
	}
	
}
