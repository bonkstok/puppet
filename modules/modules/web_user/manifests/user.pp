define web_user::user(
    $content = "<h1>Welcome tot ${title}'s home page!</h1>", /*default  value */
    $password = undef, #undef is the same as null 
)
  {
    $home_dir="/home/${title}" #title is defined in the examples/user.pp
    # $public_html = "${home_dir}/public_html"
    $file_name = "welcome.txt"
    user { $title :# the title variable will be declared in examples/user.pp
        ensure   => present,
        password => $password,
    }
    file { "${home_dir}":
    ensure => directory,
    owner  => $title,
    group  => $title,
    mode   => '0664',
     }
 /*   file {"${home_dir}/welcome.txt":
      ensure => file,
      mode   => '7000',
    }*/
    file {"${home_dir}/welcome.txt":
        ensure  => file,
        owner   => $title,
        group   => $title,
        replace => false,
        content => $content,
        mode    => '0644',
    }
    file_line { "${home_dir}/welcome.txt":
        path => "${home_dir}/welcome.txt",
        line => "Dit is een test voor user: ${title}. Nogmaals",
    }
    notice ("${home_dir}")
    alert ("Test allert voor user ${title}.")
}
