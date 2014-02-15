class kibana::files {
	file{"kibana-web":
		path => "/var/www/html",
		ensure => directory,
		owner => apache,
		group => apache,
		mode => 755,
		recurse => true,
		source => "puppet:///modules/kibana/kibana-rb/",
	}

	file{"apache-welcome":
		path => "/etc/httpd/conf.d/welcome.conf",
		ensure => absent,
		notify => Service["httpd"],
	}

	file{"kibana-vhost":
		path => "/etc/httpd/conf.d/kibana.conf",
		owner => root,
		group => root,
		mode => 744,
		source => "puppet:///modules/kibana/httpd/kibana.conf",
		require => Package["httpd"],
		notify => Service["httpd"],
	}	
}
