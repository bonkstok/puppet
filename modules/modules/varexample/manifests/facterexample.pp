class varexample::facterexample ($doc_root, $filename, $ipadr){
  file{"${doc_root}/${filename}.txt":
        ensure  => file,
        content => "${ipadr}",
}}
