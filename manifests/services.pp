class kibana::services {
	service { 'httpd':
                        enable => true,
                        ensure => running,
                        require => Package["httpd"],
        }
}
