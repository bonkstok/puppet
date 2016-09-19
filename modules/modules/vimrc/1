class vimrc{ #create a class 
  file {'/root/.vimrc': #path to the  file you want to edit.
      ensure =>  file, #ensure the file exists, when it coems to packages you use ensure => present,
      source => 'puppet:///modules/vimrc/vimrc', # tells what the file given above should contain.
      #the source uri is puppet://{server hostname (optional)}/{mount point}/{remainder of path}
      #the server hostname is almsot always clean, since the default is the hostname of the master.
      #Puppet treats modules as a special mountpoint. So often the first part uro looks like:
      #puppet://{path} 
  }
}
