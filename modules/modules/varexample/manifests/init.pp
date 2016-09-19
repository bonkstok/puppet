class varexample ($doc_root, $mode, $message, $filename){
file {"${doc_root}/${filename}.txt":
    ensure  => file,
    content => "${message}",
    mode    => "${mode}",
}}

/*class factvari( $ipaddress, $filename, $docroot){
file {"
}*/
