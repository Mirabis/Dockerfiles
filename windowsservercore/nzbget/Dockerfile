FROM mirabis/chocolate:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="12-05-2016"

ENV NZBGet_Ver=16.4 Python_VER=2.7.x

	
# Install NZBGet
RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri https://github.com/nzbget/nzbget/releases/download/v$16.4/nzbget-$16.4-bin-win32-setup.exe -OutFile c:\nzbget-installer.exe ; \
	Start-Process c:\nzbget-installer.exe -ArgumentList '/S' -Wait ; \
	Remove-Item c:\nzbget-installer.exe -Force 
	
WORKDIR /ProgramFiles\NZBGet\

# Expose the default port
EXPOSE 6789 6791

# Seperate mounting options for logs, config & data
VOLUMES ["$env:HOMEPATH\Documents\NZBGet\Data",
"$env:HOMEPATH\Downloads\NZBGet\Logs",
"$env:HOMEPATH\Documents\NZBGet\Config"]

# Allow customization
CMD ["nzbget","--configfile",":\Users\Administrator\Documents\NZBGet\Config\nzbget.conf","--server"]


