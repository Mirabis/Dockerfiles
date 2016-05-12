FROM windowsservercore:latest
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="12-05-2016"

ENV PYTHON_VER=2.7.x NZBHYDRA_BASE_VER=0.0.1a90

# Install Chocolatey Package Manager
# Install dependencies
RUN powershell.exe -Command \
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')); \
	choco install python2 -y 
#RUN SETX /M Path %path%;C:\mysql-5.6.29-winx64\bin
# Install Windows Version of NzbHydra
# pip install lxml; \
RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri https://github.com/theotherp/nzbhydra/archive/$NZBHYDRA_BASE_VER.zip -OutFile c:\nzbhydra.zip ; \
	Expand-Archive -Path c:\nzbhydra.zip -DestinationPath c:\ ; \
	Remove-Item c:\nzbhydra.zip -Force ; 
#	New-Item -ItemType Directory -Path "%HOMEPATH%\Documents\NzbHydra\Logs\" ; \
#	New-Item -ItemType Directory -Path "%HOMEPATH%\Documents\NzbHydra\Config\" ; \
#	New-Item -ItemType Directory -Path "%HOMEPATH%\Documents\NzbHydra\Data\"  
	
WORKDIR /NzbHydra

# Expose the default port
EXPOSE 5075

# Seperate mounting options for logs, config & data
VOLUMES ["%HOMEPATH%\Documents\NzbHydra\Data","%HOMEPATH%\Documents\NzbHydra\Logs","%HOMEPATH%\Documents\NzbHydra\Config"]

# Allow customization
CMD ["python","nzbhydra.py","--nobrowser",
"--logfile","%HOMEPATH%\Documents\NzbHydra\Logs\nzbhydra.log",
"--config","%HOMEPATH%\Documents\NzbHydra\Config\settings.cfg",
"--database","%HOMEPATH%\Documents\NzbHydra\Data\nzbhydra.db",
]


