class tomcat::service inherits tomcat {
	if ! ($service_ensure in ['stopped','running']){
		fail("Service status must be one of stopped or running")
	}
	if $service_manage == true {
		service {'tomcat6':
			ensure	=>	$service_ensure,
			name		=>	$service_name,
		}
	}
}