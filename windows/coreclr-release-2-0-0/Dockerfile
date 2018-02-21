FROM jashook/vs2017-build-tools

# Install coreclr dependencies
RUN choco install cmake -y
RUN choco install python2 -y

# Make the tools directory
RUN mkdir C:\startup_tools
COPY run_command_cmd64.cmd C:\\startup_tools
COPY register_dia.cmd C:\\startup_tools
COPY kill_symbol_server.cmd C:\\startup_tools
COPY setup.cmd C:\\startup_tools

RUN set PATH=%PATH%;C:\python27;C:\python27\scripts;"C:\\Program Files\\CMake\\bin"

ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat && C:\startup_tools\setup.cmd && 