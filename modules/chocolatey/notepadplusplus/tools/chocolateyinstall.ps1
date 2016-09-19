# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

Import-Module C:\ProgramData\chocolatey\helpers\chocolateyInstaller.psm1

$ErrorActionPreference = 'Stop'; # stop on all errors
$packageName= 'notepadplusplus' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://notepad-plus-plus.org/repository/6.x/6.9.2/npp.6.9.2.Installer.exe' #
#$fileLocation = Join-Path $toolsDir 'NAME_OF_EMBEDDED_INSTALLER_FILE'
#$fileLocation = '\\SHARE_LOCATION\to\INSTALLER_FILE'
#$fileLocation = Join-Path $toolsDir 'npp.6.8.8.Installer.exe'
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  url           = $url
  #url64bit      = $url64
  #file         = $fileLocation
  softwareName  = 'notepad++' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  # Checksums are now required as of 0.10.0.
  # To determine checksums, you can get that from the original site if provided. 
  # You can also use checksum.exe (choco install checksum) and use it 
  # e.g. checksum -t sha256 -f path\to\file
  checksum      = '6A54E0E8C8DBFCA68ABE3CBE66D99C66CED59CEA'
  checksumType  = 'sha1' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '6A54E0E8C8DBFCA68ABE3CBE66D99C66CED59CEA'
  checksumType64= 'sha1' #default is checksumType
  silentArgs = '/S'
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
