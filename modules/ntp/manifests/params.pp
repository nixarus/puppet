class ntp::params {


    case $::operatingsystem {
        'ubuntu': {
            $ntp_service_name = "ntp"
     }
        'redhat': {
            $ntp_service_name = "ntpd"
        }
    }

}
