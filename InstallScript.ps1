# Install Chocolatey, then all required packages 

# Install Chocolatey 

    Write-Output "Installing Chocolatey"
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    choco install chocolatey-core.extension -y

##################
#Install programs#
##################

##Gaming
    choco install steam -y #Steam
    choco install uplay -y #UPlay
    choco install epicgameslauncher -y #Epic        