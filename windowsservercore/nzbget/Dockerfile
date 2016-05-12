FROM windowsservercore:latest
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="12-05-2016"

ENV NZBGet_Ver=16.4

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri https://github.com/nzbget/nzbget/releases/download/v$16.4/nzbget-$16.4-bin-win32-setup.exe -OutFile c:\nzbget-installer.exe ; \
	Start-Process c:\nzbget-installer.exe -ArgumentList '/S' -Wait ; \
	Remove-Item c:\nzbget-installer.exe -Force
	
WORKDIR /NzbHydra

# Expose the default port
EXPOSE 5075

# Seperate mounting options for logs, config & data
VOLUMES ["C:\Users\Administrator\Documents\NzbHydra\Data",
"C:\Users\Administrator\Documents\NzbHydra\Logs",
"C:\Users\Administrator\Documents\NzbHydra\Config"]

# Allow customization
CMD ["C:\python2\python","nzbhydra.py","--nobrowser",
"--logfile","C:\Users\Administrator\Documents\NzbHydra\Logs\nzbhydra.log",
"--config","C:\Users\Administrator\Documents\NzbHydra\Config\settings.cfg",
"--database","C:\Users\Administrator\Documents\NzbHydra\Data\nzbhydra.db",
]


