# 1. Make sure the Microsoft App Installer is installed:
#    https://www.microsoft.com/en-us/p/app-installer/9nblggh4nns1
# 2. Edit the list of apps to install.
# 3. Run this script as administrator.

$apps = @(
    @{name = "7zip.7zip" },
    @{name = "Adobe.Acrobat.Reader.64-bit" },
    @{name = "Git.Git" },
    @{name = "Google.Chrome" },
    @{name = "Inkscape.Inkscape" },
    @{name = "JetBrains.Toolbox" },
    @{name = "Microsoft.Microsoft.AzureDataStudio.Insiders" },
    @{name = "Microsoft.dotnet" },
    @{name = "Microsoft.PowerShell" },
    @{name = "Microsoft.PowerToys" },
    @{name = "Microsoft.VisualStudio.2022.Professional.Preview" },
    @{name = "Microsoft.VisualStudioCodeInsiders" },
    @{name = "Microsoft.WindowsTerminal.Preview" },
    @{name = "Mozilla.Firefox.DeveloperEdition" },
    @{name = "Mozilla.Firefox" },
    @{name = "Balena.Etcher" },
    @{name = "Notepad++.Notepad++" },
    @{name = "OpenJS.NodeJS.Nightly" },
    @{name = "TimKosse.FileZilla.Client" },
    @{name = "WinDirStat.WinDirStat" },
    @{name = "ScooterSoftware.BeyondCompare4" },
    @{name = "Docker.DockerDesktop" },
    @{name = "JGraph.Draw" },
    @{name = "Mirantis.Lens" },
    @{name = "Keeper.KeeperDesktop" },
    @{name = "LINQPad.LINQPad.7" },
    @{name = "GIMP.GIMP.Nightly" },
    @{name = "Piriform.CCleaner" },
    @{name = "Microsoft.Office" },
    @{name = "JanDeDobbeleer.OhMyPosh" },
    @{name = "Microsoft.Azure.CosmosEmulator" },
    @{name = "Microsoft.Azure.FunctionsCoreTools" },
    @{name = "Microsoft.Azure.DataCLI" },
    @{name = "Microsoft.AzureCLI" },
    @{name = "Microsoft.Azd" },
    @{name = "Microsoft.Azure.StorageExplorer" },
    @{name = "Microsoft.SQLServerManagementStudio" },
    @{name = "Microsoft.Teams.Preview" },
    @{name = "ShiningLight.OpenSSL" },
    @{name = "wOpenVPNTechnologies.OpenVPNConnect" },
    @{name = "PuTTY.PuTTY" },
    @{name = "Telerik.Fiddler.Everywhere.Insiders" },
    @{name = "Python.Python.3.11" },
    @{name = "Kubernetes.kubectl" },
    @{name = "Rainmeter.Rainmeter" },
    @{name = "SomePythonThings.WingetUIStore" },
    @{name = "WinSCP.WinSCP.RC" },
    @{name = "GitHub.GitHubdesktop" },
    @{name = "SlackTechnologies.Slack.Beta" },
    @{name = "WhatsApp.WhatsApp.Beta" },
    @{name = "Zoom.Zoom" }
    
);

Foreach ($app in $apps) {
Write-host "Installing Apps"
    $listApp = winget list --exact $app.name
    
    if (![String]::Join("", $listApp).Contains($app.name)) {
        Write-host "Installing: " $app.name
        winget install -e -h --accept-source-agreements --accept-package-agreements --id $app.name 
    }
    else {
        Write-host "Skipping: " $app.name " (already installed)"
    }
}
Write-host "Apps Installed"
