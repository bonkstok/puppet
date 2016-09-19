class editmode::doit{
    file{'/root/lol.txt':
      ensure => file,
      # mode   =>  '0700',
      source => 'puppet:///modules/editmode/change.txt',
     
    }}
