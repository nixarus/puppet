
class user-redhat {
	
	user {'redhat':
        ensure => present,
        comment => "Red Hat",
        name => 'redhat',
        uid => 600,
        gid => 600,
        managehome => true,
        password => '$1$Bxxq4jL4$VS44fJmehs2yFl0jX3CFS0',
    }

    group {'redhat':
        gid => 600,
    }

}

