$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ForceCLI/force/releases/download/v0.24.3/force_windows_386.exe'
$url64      = 'https://github.com/ForceCLI/force/releases/download/v0.24.3/force_windows_amd64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath  = "$toolsDir\force.exe"
  url           = $url
  url64bit      = $url64
  checksum      = '940FB894AE42833B22EC41C624751126D763719DCFBC4F3F0AD0F0D1A2228D33'
  checksumType  = 'sha256'
  checksum64    = 'F1321D136BAB13C066CED14A6901359AB93FA68DFBDAC494D33E50328029EE50'
  checksumType64= 'sha256'

}

Get-ChocolateyWebFile @packageArgs
