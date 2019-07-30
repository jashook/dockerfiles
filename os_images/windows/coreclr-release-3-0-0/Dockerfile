FROM jashook/vs2017-build-tools-enterprise:latest

# Install coreclr dependencies
RUN choco install cmake -y
RUN choco install python3 -y
RUN choco install git -y

ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat &&