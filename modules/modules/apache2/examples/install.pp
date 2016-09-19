#include apache2::install
#apache2::install { 'www-data':
 # password => pw_hash('casper', 'SHA-512', 'mysalt'),
#}
apache2::install { 'www-data':
  password => pw_hash('test', 'SHA-512', 'mysalt'),
}
