
## site.pp ##

node default {
  #   class { 'my_class': }
    include ssh
    include sudo

    group{'group1':
        ensure => present,
        gid => '550',
       }

    group{'group2':
        ensure => present,
        gid => '552',
       }

    user {'redhat':
        ensure => present,
        gid => '552',
        uid => '552',
        comment => 'Puppet Redhat',
        home    => '/home/redhat/',
        shell   =>  '/bin/bash',
        managehome => true,
    }

    user {'user1':
        ensure => present,
        gid => '550',
        uid => '550',
        comment => 'Puppet User1',
        home    => '/home/user1/',
        shell   =>  '/bin/bash',
        managehome => true,
    }

    ssh_authorized_key {'puppetmaster-user1-pub-key':
        user => 'user1',
        type => 'rsa',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA97Ib0Ecw6IXuJC0iYYKq4Y3e+mx4QF3t9LxpS/kHOs16mp9FIm3BP2TBumhpY8UpmxRnhymoDU7sFaC5IaUv7qU9uTNmQRAx5QDayWgpIynmXeHZc1nVM2+TX+pxJgSK867izh3FfcTaO4iY79/sv6k14ii5GebLMKh17tFmmMwtzLtdW6lmiaCXTJYLq1Cev93l4W0OutlNW/85+aZ5HWj5o4Z3/i4HSKY913ku40r3d2xJQ8dfi556I/Rfowi6mXYu2BPy33EhFMDXZHliSzJNQGtHehTsFZGMFxK7pyVVr+HS38D/G+3MwTaGzfRnCti/Ufg+vAES8N1fXdkGww==',
    }

    ssh_authorized_key {'foxriver-user1-pub-key':
        user => 'user1',
        type => 'rsa',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+C+cSSuDZ7NHEOgQCwp7SGaaUEGyp5jLcP0tckD+uEBfuxWeE6HVHXoxp5ZRMUOo8UQg2C2KhvQ79mHqss3h3urozpasKphZHh2szCn0R6xJNtXL+r9P9/eVE5PCaQ/AJY+gYfK8KAJA4zePomSWegRlK8wAptHLTuxM6y6zjdI3DFgbAbQNFI28u7h5q2f7D3VbWXxFhMBfLWT1roJUOd6P/kRIYmjpOY5peTgG98xaywp0W0LwNshHVLwRU50VI3ogoiSBg8aIVGF1JQ5M52yM+Okc9Qxrcgjh8D2rgVxoNZmrRMIWDTImePcRe8PyJ+h8YYymyTesJ8b12kqqB',
    }
}

