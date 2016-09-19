class apache2::uninstall {
        if $::operatingsystem == 'debian'{
           $package_name = 'apache2' }
         elsif $::operatingsystem == 'centos'{
           $package_name = 'httpd'
          }
        else{
       fail('No module found for ${::operatingsystem}.') }

package { $package_name:
  ensure => absent,
}}
