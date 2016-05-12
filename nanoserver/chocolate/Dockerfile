FROM nanoserver

MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>

LABEL Creator=Mirabis \
      docker.mirabis.is-beta=True \
	  docker.mirabis.service-can-auto-update=True \
      docker.mirabis.release-date="12-05-2016"

ENV CHOCO_VER=v2

# Windows-like apt-get
RUN powershell.exe -Command \
	register-packagesource -Name chocolatey -Provider PSModule -Trusted -Location http://chocolatey.org/api/v2/
	