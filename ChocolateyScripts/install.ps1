Set-Executionpolicy -Scope CurrentUser -ExecutionPolicy UnRestricted



if ((Test-Path $env:ProgramData\chocolatey) -eq $True) { 
             choco install packages.config
} 
else { 
            iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')) 
} 


