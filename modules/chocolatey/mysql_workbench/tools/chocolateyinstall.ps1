Import-Module 'C:\programdata\chocolatey\helpers\chocolateyInstaller.psm1'
$ErrorActionPreference = 'Stop'; # stop on all errors


$packageName= 'mysql_workbench' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.3.7-win32.msi' # download url, HTTPS preferred
$url64      = 'http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.3.7-winx64.msi' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
  packageName   = $packageName
  #unzipLocation = $toolsDir
  fileType      = 'msi' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64
  validExitCodes= @(0, 3010, 1641)
    #file         = 'c:\choco_installs\putty.exe'

  softwareName  = 'MySQL Workbench Community' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  # Checksums are now required as of 0.10.0.
  # To determine checksums, you can get that from the original site if provided. 
  # You can also use checksum.exe (choco install checksum) and use it 
  # e.g. checksum -t sha256 -f path\to\file
  checksum      = 'BA3033109A89DE9C596B606A87C0F245E'
  hecksumType  = 'md5' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = 'C85BB8CF4BE4D874196F65A12253AE9A'
  checksumType64= 'md5' #default is checksumType
  silentArgs = '/quiet'

}

Install-ChocolateyPackage @packageArgs 