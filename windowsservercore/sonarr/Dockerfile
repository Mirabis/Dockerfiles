FROM mirabis/chocolatey:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="21-05-2016"

ENV SONARR_VER=2.x

# Install Sonarr/NzbDrone

RUN powershell -Command \ 
	$ErrorActionPreference = 'Stop' ; \
	choco install sonarr -y ; \
	mkdir c:\Sonar\config c:\Sonar\media c:\Sonar\downloads  

VOLUME /Sonar/config
VOLUME /Sonar/media
VOLUME /Sonar/downloads
	
WORKDIR C:\ProgramData\NzbDrone\bin

# Expose the default port
EXPOSE 8989
EXPOSE 9898


# Run Sonarr
CMD ["NzbDrone.exe","--no-browser","-data=c:\Sonar\config ]

