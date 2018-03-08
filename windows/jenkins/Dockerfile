FROM jashook/chocolatey:latest

# Install coreclr dependencies
RUN choco install jdk9 -y
RUN choco install python2 -y
RUN choco install jenkins -y
RUN choco install git -y

# Make the tools directory
RUN mkdir C:\startup_tools

# Setup the path
COPY setup_path.cmd C:\\startup_tools

RUN setx JENKINS_WAR_PATH "C:\Program Files (x86)\Jenkins"

# Remove the silly windowns jenkins service
RUN sc delete Jenkins

EXPOSE 8080

ENTRYPOINT C:\startup_tools\setup_path.cmd && 