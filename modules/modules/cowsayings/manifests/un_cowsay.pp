class cowsayings::un_cowsay {
  package {'cowsay':
    ensure   => absent,
    provider => 'gem',
}
}

