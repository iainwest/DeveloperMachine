Write-Output "Updating Chocolatey..."
choco upgrade chocolatey -y
Write-Output "Updating all packages..."
choco upgrade all -y