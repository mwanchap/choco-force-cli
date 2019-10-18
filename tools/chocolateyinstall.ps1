$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ForceCLI/force/releases/download/v0.26.9/force_windows_386.exe'
$url64      = 'https://github.com/ForceCLI/force/releases/download/v0.26.9/force_windows_amd64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath  = "$toolsDir\force.exe"
  url           = $url
  url64bit      = $url64
  checksum      = '1A493A279D8FD358E159266A1A7AE3EFE060A547DEE75D1434AEC76AD7B579CA'
  checksumType  = 'sha256'
  checksum64    = 'EDF118A2585EA84B7ADCCBFF50F9E587B519425F72E0966D65C177B569B0EC42'
  checksumType64= 'sha256'

}

Get-ChocolateyWebFile @packageArgs
