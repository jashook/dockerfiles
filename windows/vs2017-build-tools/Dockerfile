FROM jashook/chocolatey:latest

# Download useful tools to C:\tools
ADD https://dist.nuget.org/win-x86-commandline/v4.1.0/nuget.exe C:\\tools\\nuget.exe

# Download the Build Tools bootstrapper outside of the PATH.
ADD https://aka.ms/vs/15/release/vs_buildtools.exe C:\\TEMP\\vs_buildtools.exe

RUN C:\\TEMP\\vs_buildtools.exe --wait --quiet --norestart --nocache --installPath C:\BuildTools \
    --add Microsoft.Component.MSBuild \
    --add Microsoft.VisualStudio.Component.Roslyn.Compiler \
    --add Microsoft.VisualStudio.Component.Roslyn.LanguageServices \
    --add Microsoft.VisualStudio.Component.VC.CLI.Support \
    --add Microsoft.VisualStudio.Component.VC.Tools.ARM \
    --add Microsoft.VisualStudio.Component.VC.Tools.ARM64 \
    --add Microsoft.VisualStudio.Component.Windows10SDK.14393 \
    --add Microsoft.VisualStudio.Component.Windows10SDK.16299.Desktop \
    --add Microsoft.VisualStudio.Component.Windows10SDK.16299.Desktop.arm\
    || IF "%ERRORLEVEL%"=="3010" EXIT 0

# Start developer command prompt with any other commands specified.
ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat &&