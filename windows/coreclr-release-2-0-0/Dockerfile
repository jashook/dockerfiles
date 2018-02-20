FROM jashook/vs2017-build-tools

# Install coreclr dependencies
RUN choco install cmake -y
RUN choco install python2 -y

# Make the tools directory
RUN mkdir C:\startup_tools
RUN echo %SystemRoot%\sysWow64\cmd.exe /S /C "%1" > C:\startup_tools\run_command_cmd64.cmd
RUN echo regsvr32.exe /S "%VSINSTALLDIR%\Common7\IDE\msdia120.dll" > C:\startup_tools\register_dia.cmd

RUN set PATH=%PATH%;C:\python27;C:\python27\scripts;"C:\\Program Files\\CMake\\bin"

ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat &&