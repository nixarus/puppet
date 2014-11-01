
define macro-useradd ($name, $uid, $sshkeytype, $sshkey ) {

    $username = $title

    user { "$username":
	comment => "$name",
	home => "/home/$username",
	shell => "/bin/bash",
	uid => $uid,
	gid => $gid,
	managehome => "true",
    }

    group { "$username":
	gid => $uid,
    }

    ssh_authorized_key { "master-root-key-for-$username":
	user => "$username",
	ensure => present,
	type => "$sshkeytype",
	key => "$sshkey",
	name => "$username",
    }

}
