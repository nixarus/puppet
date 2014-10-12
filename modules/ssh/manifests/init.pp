
class ssh {

    service {'ssh':
        name => 'sshd',
        ensure => running,
    }

    file {'/etc/ssh/sshd_config':
        ensure => present,
        mode => 0600,
        source => 'puppet:///modules/ssh/sshd_config',
        owner => 'root',
        group => 'root',
        notify => Service['ssh'],
    }


}
