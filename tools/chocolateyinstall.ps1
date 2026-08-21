$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ForceCLI/force/releases/download/v1.13.0/force_windows_amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  url           = $url
  unzipLocation = $toolsDir
  checksum      = '36cd144c0a804dc3fde518b966279e2d8004654f0f0d575210c9592f5e78cefc'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
