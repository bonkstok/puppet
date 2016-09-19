class accounts ($user_name){

  if $::operatingsystem == 'centos'{ #not case sensitive
    $groups = 'wheel'}
  elsif $::operatingsystem == 'debian' {
    $groups = 'admin'}
  else{
    fail ("This module doesnt support ${::operatingsystem}." )
  }

notice( "Groups  for user ${user_name} set to ${groups}")

  user{$user_name: 
    ensure => present,
    home   => "/home/${user_name}",
    groups => $groups,}
 }
