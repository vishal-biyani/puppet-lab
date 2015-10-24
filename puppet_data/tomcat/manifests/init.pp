class tomcat (
	$package_name		=	$tomcat::params::service_name,
	$package_ensure	=	$tomcat::params::package_ensure,
	$service_manage	=	$tomcat::params::service_manage,
	$service_name		=	$tomcat::params::service_name,
	$service_ensure	=	$tomcat::params::service_ensure,
	$service_port		=	$tomcat::params::service_port,
) inherits ::tomcat::params {
	contain tomcat::config  
	contain tomcat::install
	contain tomcat::service
	
	Class['tomcat::config'] ->
	Class['tomcat::install'] ->
	Class['tomcat::service']
}
