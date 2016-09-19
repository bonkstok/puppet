node 'client01.puppet.test' {
  include editfile::doit
  include sshinstall::install
  include apache2::uninstall
  include ntp::install
}

node 'winserver02.localdomain'{
  
  #include windowstest::installiis
class {'chocolatey':
    chocolatey_download_url       => 'https://packages.chocolatey.org/chocolatey.0.10.0.nupkg',
    use_7zip                      => false,
    choco_install_timeout_seconds => 2700,
}
  
#include windowstest::addhost
include hosts::exchange
#include windowstest::addfilewindows
}
node 'winserver01.puppet.test'{
   include windowstest::addfilewindows
  # include windowstest::addfilewindows
  #include windowstest::addhost 
 #include chocolatey
 #include windowstest::addhost
 
 # include chocolatey
 #include windowstest::installiis
 # windowstest::installiis { 'IIS':
 #  app => 'IIS',
 # }
}
node 'webserver01.puppet.test'{
include hosts::exchange
include apache2::install
include ntp::install
apache2::userwwwdata { 'www-data':
  password => pw_hash('test', 'SHA-512', 'test'),
}}
