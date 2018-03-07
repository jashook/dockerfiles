FROM microsoft/windowsservercore

# Setup package management
RUN powershell -Command \
	Invoke-Expression ((New-Object Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RUN powershell -Command \
	Install-PackageProvider -Name chocolatey -Force