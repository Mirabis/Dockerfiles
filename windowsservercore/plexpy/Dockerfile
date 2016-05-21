FROM mirabis/python:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="21-05-2016"

ENV PYTHON_VER=3.x 
ENV APPDIR c:\PlexPy

# Install dependencies
RUN powershell -Command \ 
	$ErrorActionPreference = 'Stop'; \
	choco install git -y 
	
# Setup PlexPy
RUN powershell -Command \ 
	$ErrorActionPreference = 'Stop'; \
	git clone --progress --quiet https://github.com/drzoidberg33/plexpy.git c:\PlexPy  ; \
	New-Item -ItemType Directory -Path "c:\PlexPy\Config" -Force ; \
	New-Item -ItemType Directory -Path "c:\PlexPy\Data" -Force  ; \
	Add-Content c:\PlexPy\.gitignore "`nConfig\*" ; \
	Add-Content c:\PlexPy\.gitignore "`nData\*" 
	
WORKDIR /PlexPy

# Expose the default port
EXPOSE 8181

#VOLUME ["c:\PlexPy\Data","c:\PlexPy\Config"]

# Run PlexPy
CMD ["python","PlexPy.py","--quiet","--nolaunch", \
	"--config","c:\PlexPy\Config\config.ini", \
	"--datadir","c:\PlexPy\Data" ]

