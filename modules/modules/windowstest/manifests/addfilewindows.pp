class windowstest::addfilewindows{
  dsc_file {'Example':
      dsc_ensure          => 'Present',
      dsc_type            => 'File',
      dsc_destinationpath => 'c:/foo.txt',
      dsc_contents        => 'Just another test',
      }

  exec{ 'add file':
      command  => 'echo "Want, weer een test." >> c:/test.txt',
      provider => powershell,
  }
}
