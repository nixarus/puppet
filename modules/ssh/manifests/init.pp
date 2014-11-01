class ssh {

    include ssh::params
    include ssh::install
    include ssh::config
    include ssh::service

}


