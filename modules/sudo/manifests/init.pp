
class sudo {

    file {'/etc/sudoers':
        source => 'puppet:///modules/sudo/sudoers',
        mode   => '0400',
        owner  => 'root',
        group  => 'root',
    }

}
