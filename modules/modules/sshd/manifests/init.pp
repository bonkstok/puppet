class sshd{

service { 'sshd':
    ensure    => running,
    enable    => true,
    # require   => Package['openssh-server'],
    #subscribe => File['/etc/ssh/sshd_config'],
}

file {'/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    source  => 'puppet:///modules/sshd/sshd_config',
    #notify => Service['sshd'],
    require => Package['openssh-server'],
}
package {'openssh-server':
    ensure  => present,
    before => Service['sshd'],}
    #before  => File['etc/ssh/sshd_config'],
    }
