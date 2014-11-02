class base {
    include ssh
    include user-redhat
    include user-admin
}

node 'agent0.virtual.vm' {
    include base
    include user-backup
}

node 'agent1.virtual.vm' {
    include base
}

node 'agent2.virtual.vm' {
    include base
}

node 'agent3.virtual.vm' {
    include base
}

node 'rhel5.virtual.vm' {
    include base
}

node 'rhel7.virtual.vm' {
    include base
}
