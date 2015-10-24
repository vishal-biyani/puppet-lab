class tomcat::install inherits tomcat {
	package { 'tomcat6':
		name		=>	$package_name,
		ensure	=>	$package_ensure,
	}
	package {'tomcat6-webapps':
		name	=>	$root_webapp_name,
		ensure	=>	$root_webapp_ensure,
		require	=>	Package['tomcat6'],
	}
}