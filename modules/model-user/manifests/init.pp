
define model-user ( $name, $uid, $password) {
    
    $username = $title

    user { "$username":
        comment => "$name",   
        ensure => present,
        uid => $uid,
        gid => $uid,
        password => "$password",
        shell => '/bin/bash',
        home => "/home/$username",
        managehome => true,
    }

    group { "$username":
        ensure => present,
        gid => $uid,

    }

}
