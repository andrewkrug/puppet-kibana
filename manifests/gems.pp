class kibana::gems {

#	include rvm

#	rvm_system_ruby {
# 		 'ruby-1.9':
#		 ensure      => 'present',
#    		 default_use => true,
#    		 build_opts  => ['--binary'];
#  		'ruby-2.0':
#    		 ensure      => 'present',
#    		 default_use => false;
#	}

	package {
		"ruby":		ensure => installed;
		"ruby-devel":	ensure => installed;
		"ruby-ri":	ensure => installed;
		"ruby-rdoc":    ensure => installed;
	}

	package {
		"bundler":	ensure => installed, provider => 'gem',;
		"rake":      ensure => installed, provider => 'gem';
		"atomic":      ensure => installed, provider => 'gem';
		"daemons":      ensure => installed, provider => 'gem';
		"diff-lcs":      ensure => installed, provider => 'gem';
		"eventmachine":      ensure => installed, provider => 'gem';
		"fastercsv":      ensure => installed, provider => 'gem';
		"jruby-jars":      ensure => installed, provider => 'gem';
		"jruby-rack":      ensure => installed, provider => 'gem';
		"json":      ensure => installed, provider => 'gem';
		"rack":      ensure => installed, provider => 'gem';
		"rack-protection":      ensure => installed, provider => 'gem';
		"tilt":      ensure => installed, provider => 'gem';
		"sinatra":      ensure => installed, provider => 'gem';
		"thin":      ensure => installed, provider => 'gem';
		"thread_safe":      ensure => installed, provider => 'gem';
		"tzinfo":      ensure => installed, provider => 'gem';
		"rspec-core":      ensure => installed, provider => 'gem';
		"rspec-expectations":      ensure => installed, provider => 'gem';
		"rspec-mocks":      ensure => installed, provider => 'gem';
		"rspec":      ensure => installed, provider => 'gem';
#		"rubyzip":      ensure => installed, provider => 'gem';
#		"warbler"		:      ensure => installed, provider => 'gem';
	}

	exec {"bundle-install":
		command => "/usr/bin/bundle install",
		cwd => "/var/www/html",
		require => File["kibana-web"],
		#refreshonly => true,
	}
}	
