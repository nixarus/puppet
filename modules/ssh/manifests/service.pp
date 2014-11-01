class ssh::service {

    service { $ssh::params::ssh_service_name:
	ensure => running,
	enable => true,
	hasstatus => true,
	hasrestart => true,
	require => Class["ssh::install"],
    }

}
