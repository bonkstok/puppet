class apache2::install{
 
  if $::operatingsystem == 'debian'{
    $package_name = 'apache2'
    exec { 'update':
    command => '/usr/bin/apt-get update',
    }}
  elsif $::operatingsystem == 'centos'{
    $package_name = 'httpd'
   }
  else{
   fail('No module found for ${::operatingsystem}.')
}
  package {"${package_name}":
    ensure => installed,
}}
