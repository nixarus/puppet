class ssh::config {

    file { $ssh::params::ssh_config_file:
	ensure => present,
	source => "puppet:///modules/ssh/sshd_config",
	mode => 0600,
	owner => 'root',
	group => 'root',
	require => Class["ssh::install"],
	notify => Class["ssh::service"],
    }

}
