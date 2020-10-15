# Install Chocolatey, then all required packages

# Install Chocolatey

  Write-Output "Installing Chocolatey"
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
  choco install chocolatey-core.extension -y

##################
#Install programs#
##################

##Gaming
  Write-Output "Installing Game Launchers"
  choco install steam -y #Steam
  choco install uplay -y #UPlay
  choco install epicgameslauncher -y #Epic
  choco install origin -y #Origin

##Benchmarks
  Write-Output "Installing Benchmark Apps"
  choco install crystaldiskmark -y #CrystalDiskMark
  choco install cpu-z -y #CPU-Z
  choco install gpu-z -y #GPU-Z
  choco install pci-z -y #PCI-Z
  choco install cinebench #Cinebench R20

## Direct install of Google Chrome
  Write-Output "Installing Google Chrome"
  $Path = $env:TEMP; $Installer = "chrome_installer.exe"; Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer; Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer

## Run Windows Update
  
