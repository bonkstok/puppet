web_user::user { 'shelob':}#shelob  will be the value of $title in the manifests/user.pp
web_user::user { 'frodo':
    content  => 'Henkie - Frodo',
    password => pw_hash('sting','SHA-512', 'mysalt'),
}
web_user::user {'test_user1':
      content  => 'Test user 1',
      password => pw_hash('sting', 'SHA-512', 'mysalt'),
}
web_user::user {'test_user2':
    content  => 'Test user 2',
    password => pw_hash('sting', 'SHA-512', 'mysalt'),
}
