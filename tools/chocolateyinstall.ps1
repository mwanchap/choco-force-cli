$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ForceCLI/force/releases/download/v0.26.0/force_windows_386.exe'
$url64      = 'https://github.com/ForceCLI/force/releases/download/v0.26.0/force_windows_amd64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath  = "$toolsDir\force.exe"
  url           = $url
  url64bit      = $url64
  checksum      = '9799C2208A4C41EC1759F7C086FBE6591E44CD81EA189758DBB955C72BF988AB'
  checksumType  = 'sha256'
  checksum64    = 'C823399A474BDB68ED65A035C0890001E37D3A537E9B5FAC4052F380C75DD963'
  checksumType64= 'sha256'

}

Get-ChocolateyWebFile @packageArgs
