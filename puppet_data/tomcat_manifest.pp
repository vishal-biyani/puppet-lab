package { 'tomcat6.x86_64':
	ensure	=> installed,	
}

service { 'tomcat6':
	ensure	=> running,
}