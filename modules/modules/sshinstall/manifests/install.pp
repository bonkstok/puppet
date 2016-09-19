class sshinstall::install {
  package {'openssh-server':
  ensure => 'present',
}
  service {'ssh':
    ensure => 'running',
    enable => true,
    require => Package['openssh-server'],
}
  file {'/etc/ssh/sshd_config':
      ensure => present,
}
  file_line { "Doing smth":
       require => File['/etc/ssh/sshd_config'],
       path => "/etc/ssh/sshd_config",
       line => "PermitRootLogin yes",
       notify => Service['ssh'],
}    
}
