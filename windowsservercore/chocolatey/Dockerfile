FROM windowsservercore:10.0.14300.1000

MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>

LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="12-05-2016"

ENV CHOCO_VER=v2

# Windows-like apt-get
RUN @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
	
	