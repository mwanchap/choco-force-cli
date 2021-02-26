$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ForceCLI/force/releases/download/v0.29.0/force_windows_386.exe'
$url64      = 'https://github.com/ForceCLI/force/releases/download/v0.29.0/force_windows_amd64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath  = "$toolsDir\force.exe"
  url           = $url
  url64bit      = $url64
  checksum      = '7461BB035CF74DAC97F5F50D3BC4FEFB03506902A3FD3FA5B6B2AFF1A9766C93'
  checksumType  = 'sha256'
  checksum64    = 'F5C6F2A8E31F1FC09B71E6B142F8435B1C07A6DEDFC550A28F95E68147DD581B'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs
