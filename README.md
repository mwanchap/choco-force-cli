Updating to new version:
 - Download both files
 - Update paths in tools\chocolateyinstall.ps1
 - Update version in force-cli.nuspec
 - Update the checksums: `checksum .\force_whatever.exe -t=sha256`
 - In the main package directory run `choco pack`
 - Test the package: `choco install force-cli --source=.`
 - Push to the main repository: `choco push`
