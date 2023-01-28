Import-Module "$env:ChocolateyInstall/helpers/chocolateyInstaller.psm1"

choco install vulkan-sdk
refreshenv