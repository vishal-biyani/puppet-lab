class tomcat::params {
	$package_name			=	'tomcat6'
	$package_ensure			=	'installed'
	$service_manage			=	true
	$service_name			=	'tomcat6'
	$service_ensure			=	'running'
	$service_port			=	'8080'
	$root_webapp_name		=	'tomcat6-webapps'
	$root_webapp_ensure		=	'installed'
}
