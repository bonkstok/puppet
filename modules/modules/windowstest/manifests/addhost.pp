class windowstest::addhost{
   #  host { 'puppet.test.com':
      #   ensure       => present,
      #  host_aliases => ['puppet.test.com'],
      /* ip           => '192.169.1.1',}
    registry_key{ 'HKLM\System\TestKey':
        ensure => present,} 
    registry_value{ 'HKLM\System\TestKey\TestValue':
        ensure  => present, 
        type    => string,
        data    => 'Just a test, baby',
        #require => Registry_key['HKLM\System\TestKey'],}
        }*/
    registry::value{ 'puppetmaster':
        key  => 'HKLM\System\Testkey',
        type => 'string',
        data => 'Just a test, dude',
    }

}
