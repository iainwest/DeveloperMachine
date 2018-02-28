ChocolateyScripts

Chocolatey scripts for installing and updating application.

Fresh machine install requires Powershell ExecutionPolicy bypass
	Set-ExecutionPolicy -ExecutionPolicy Bypass

Chocolatey to be installed
	iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))