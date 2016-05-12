FROM mirabis/chocolate:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="12-05-2016"

ENV PYTHON_VER=2.7.x NZBHYDRA_BASE_VER=0.0.1a90

# Install Windows Version of NzbHydra
# pip install lxml; \
RUN powershell.exe -Command \
	Install-Package -Name python2 -Force ; \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri https://github.com/theotherp/nzbhydra/archive/$env:NZBHYDRA_BASE_VER.zip -OutFile c:\nzbhydra.zip ; \
	Expand-Archive -Path c:\nzbhydra.zip -DestinationPath 'C:\NZBHydra' ; \
	Remove-Item c:\nzbhydra.zip -Force ; \
	New-Item -ItemType Directory -Path "$env:HOMEPATH\Documents\NzbHydra\Logs\" -Force \
	New-Item -ItemType Directory -Path "$env:HOMEPATH\Documents\NzbHydra\Config\" -Force \
	New-Item -ItemType Directory -Path "$env:HOMEPATH\Documents\NzbHydra\Data\" -Force
	
WORKDIR /NZBHydra

# Expose the default port
EXPOSE 5075

# Seperate mounting options for logs, config & data
VOLUMES ["$env:HOMEPATH\Documents\NzbHydra\Data","$env:HOMEPATH\Documents\NzbHydra\Logs","$env:HOMEPATH\Documents\NzbHydra\Config"]

# Allow customization
CMD ["python","nzbhydra.py","--nobrowser",
"--logfile","$env:HOMEPATH\Documents\NzbHydra\Logs\nzbhydra.log",
"--config","$env:HOMEPATH\Documents\NzbHydra\Config\settings.cfg",
"--database","$env:HOMEPATH\Documents\NzbHydra\Data\nzbhydra.db",
]


