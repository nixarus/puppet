class ssh::params {
 
   # $ssh_package_name = "openssh-server"
   # $ssh_config_file = "/etc/ssh/sshd_config"
   # $ssh_service_name = "sshd"

    case $operatingsystem {
        'solaris': { 
	    $ssh_package_name = "openssh" 
	    $ssh_config_file = "/etc/ssh/sshd_config"
	    $ssh_service_name = "sshd"
        }
        'ubuntu': { 
	    $ssh_package_name = "openssh-server"
	    $ssh_config_file = "/etc/ssh/sshd_config"
	    $ssh_service_name = "ssh"
	 }
        'redhat': { 
	    $ssh_package_name = "openssh-server"
	    $ssh_config_file = "/etc/ssh/sshd_config"
	    $ssh_service_name = "sshd"
	 }
    }
}
