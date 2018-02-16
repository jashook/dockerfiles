FROM microsoft/windowsservercore

# Download useful tools to C:\tools
ADD https://dist.nuget.org/win-x86-commandline/v4.1.0/nuget.exe C:\\tools\\nuget.exe

# Download the Build Tools bootstrapper outside of the PATH.
ADD https://aka.ms/vs/15/release/vs_buildtools.exe C:\\TEMP\\vs_buildtools.exe

# Add C:\tools to PATH and install Build Tools excluding workloads and components with known issues.
RUN setx /m PATH "%PATH%;C:\tools" \
 && C:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache --installPath C:\BuildTools --all \
 || IF "%ERRORLEVEL%"=="3010" EXIT 0

# Start developer command prompt with any other commands specified.
ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat &&