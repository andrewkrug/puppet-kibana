class kibana::packages {
	package {
		"httpd":		 ensure => installed;
		"mod_passenger":	 ensure => installed;
		"rubygem-passenger":	 ensure => installed;
		"openssl":		 ensure => installed;
		"mod_ssl":		 ensure => installed;
	}
}
