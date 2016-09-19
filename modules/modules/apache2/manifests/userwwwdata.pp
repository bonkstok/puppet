define apache2::userwwwdata(
 
# $title = 'www-data',
 $password = undef,) {

    $home_dir = "/home/${title}"

user{ $title :
  ensure => present,
  password => $password,
#  home => "/home/${title}",
  #password => password,
}
file { "${home_dir}":
  ensure => directory,
  owner => $title,
  group => $title, 
  mode => '0664',}

group{ $title :
  ensure => present,
  members => $title,
  require => User[$title],}

exec{ 'change /var/www user group':
  command => "/usr/bin/chown -R $title:$title /var/www",
  require => [ User[$title], Group[$title], Package[$package_name] ],
}
/*  file_line { "add line":
     path => "/etc/${package_name}/sites-available/000-default.conf",
    line => "#U gebruikt ${::operatingsystem}.",}
*/
}
