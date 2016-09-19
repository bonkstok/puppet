class editfile::doit{#if you manually create this, you need to editfile::<name of your .pp file>
    file{'/root/nogmaal.txt': #path to the file you wish to edit
      ensure => file, #ensure the file exists
      source => 'puppet:///modules/editfile/nogmaal.txt', #As you see you dont have to specify the files
      #folder. So make sure you put the files in the files folder.
    }}
