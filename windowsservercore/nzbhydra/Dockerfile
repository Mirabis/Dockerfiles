FROM mirabis/chocolatey:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="22-05-2016"

ENV PYTHON_VER=3.x
ENV APPDIR c:\NzbHydra

# Install Windows Version of NzbHydra

RUN powershell -Command \ 
	$ErrorActionPreference = 'Stop'; \
	choco install git -y ; \	
	pip install lxml -y 
	
RUN powershell -Command \	
	$ErrorActionPreference = 'Stop'; \
	git clone https://github.com/theotherp/nzbhydra %APPDIR% ; \
	New-Item -ItemType Directory -Path "c:\NzbHydra\Logs" -Force ; \
	New-Item -ItemType Directory -Path "c:\NzbHydra\Config" -Force ; \
	New-Item -ItemType Directory -Path "c:\NzbHydra\Data" -Force  ; \
	Add-Content c:\NzbHydra\.gitignore "`nLogs\*" ; \
	Add-Content c:\NzbHydra\.gitignore "`nConfig\*" ; \
	Add-Content c:\NzbHydra\.gitignore "`nData\*" 
	
WORKDIR \NzbHydra

# Expose the default port
EXPOSE 5075

# Seperate mounting options for logs, config & data
VOLUME ["%APPDIR%\Data","%APPDIR%\Logs","c%APPDIR%\Config"]

# Allow customization
CMD ["python","nzbhydra.py","--nobrowser", \
	"--logfile","c:\NzbHydra\Logs\nzbhydra.log", \
	"--config","c:\NzbHydra\Config\settings.cfg", \
	"--database","c:\NzbHydra\Data\nzbhydra.db"
]


