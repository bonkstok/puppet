class hosts::exchange {
  case  $::operatingsystem{
    'centos', 'debian': {
      #code
      $file_location = '/etc/hosts'
      }
    'windows':{
     $file_location = 'c:/windows/system32/drivers/etc/hosts'
    }
    default: {
            fail("No operating system found!")
    }
  }
      file{ $file_location : 
      ensure => present,
      source => 'puppet:///modules/hosts/hosts',
    }
}
