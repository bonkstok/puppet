class ntp::install{

#exec{ 'symlink to timezone':
 # command
#  command => '/usr/bin/ln -s /

file { '/usr/share/zoneinfo/Europe/Amsterdam':
  ensure => 'link',
  target => '/etc/localtime',}

package{ 'ntp':
  ensure => installed,
 # subsribe => File['/etc/ntp.conf'],
}
service{ 'ntpd':
  ensure => running,
  enable => true,
  require => Package['ntp'],
  subscribe => File['/etc/ntp.conf'],
}
file{ '/etc/ntp.conf':
  ensure => present,
  source => 'puppet:///modules/ntp/ntp.conf',
  require => Package['ntp'],
  notify => Service['ntpd'],
}
}
