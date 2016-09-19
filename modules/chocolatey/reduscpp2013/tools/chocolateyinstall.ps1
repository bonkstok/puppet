$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= 'reduscpp2013' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url        = 'https://download.mozilla.org/?product=firefox-48.0.2-SSL&os=win&lang=en-US'
$url64      = 'https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe' 
#$fileLocation = 'C:\ProgramData\chocolatey\tools\7z1602.exe'
#$fileLocation = '\\SHARE_LOCATION\to\INSTALLER_FILE'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
 # url           = $url
  url64bit      = $url64
  #file         = $fileLocation
  softwareName  = 'Visual C++ Redistributable' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  #checksum      = 'A86F0726019CA84D1DE1B036033D888D4538B2A9'
  #checksumType  = 'sha1' #default is md5, can also be sha1, sha256 or sha512
  #checksum64    = '0D2C251DBF1BF3CF47DA6D8118679995A979AD2A'
  #checksumType64= 'sha1' #default is checksumType
  SilentArgs = '/S'
  #MSI
  #silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)}
Install-ChocolateyPackage @packageArgs 
