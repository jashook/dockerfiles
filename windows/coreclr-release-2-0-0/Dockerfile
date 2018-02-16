FROM jashook/vs2017-build-tools

RUN @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# Create the bin directory
RUN mkdir C:\bin

# Install coreclr dependencies
RUN choco install cmake python2 -y

RUN echo %SystemRoot%\sysWow64\cmd.exe /S /C "regsvr32.exe /S "%VSINSTALLDIR%\Common7\IDE\msdia120.dll"" > C:\register_dia.cmd

ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat && C:\register_dia.cmd &&