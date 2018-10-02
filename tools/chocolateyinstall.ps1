$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ForceCLI/force/releases/download/v0.25.0/force_windows_386.exe'
$url64      = 'https://github.com/ForceCLI/force/releases/download/v0.25.0/force_windows_amd64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath  = "$toolsDir\force.exe"
  url           = $url
  url64bit      = $url64
  checksum      = '153358408A0CC80D904C23760616F46CCEF29A65798BB645C149420C3AD796B1'
  checksumType  = 'sha256'
  checksum64    = '0AC2C961F33E668FB991788DA7811A2EA9013D10DFA63E6D3EB8A4EC8A667706'
  checksumType64= 'sha256'

}

Get-ChocolateyWebFile @packageArgs
