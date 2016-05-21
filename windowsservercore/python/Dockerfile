FROM mirabis/chocolatey:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=False \
	  docker.mirabis.service-can-auto-update=False \
      docker.mirabis.release-date="22-05-2016"

ENV PYTHON_VER=3.*

RUN choco install python3 -y
		
# Allow customization
CMD ["python --version"]


