FROM jashook/vs2017-build-tools-enterprise:latest

# Install coreclr dependencies
RUN choco install cmake -y
RUN choco install python2 -y
RUN choco install git -y

# Make the tools directory
RUN mkdir C:\startup_tools
COPY run_command_cmd64.cmd C:\\startup_tools
COPY register_dia.cmd C:\\startup_tools
COPY setup.cmd C:\\startup_tools
COPY check_dia_register.cmd C:\\startup_tools

RUN C:\startup_tools\setup.cmd

# Make sure dia is registered correctly.
RUN C:\startup_tools\check_dia_register.cmd

# Setup the path
COPY setup_path.cmd C:\\startup_tools

ENTRYPOINT C:\BuildTools\VC\Auxiliary\Build\vcvars64.bat && C:\startup_tools\setup_path.cmd && 