FROM mirabis/chocolatey:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=False \
	  docker.mirabis.service-can-auto-update=False \
      docker.mirabis.release-date="22-05-2016"

ENV MONO_VER=5.x

RUN choco install monodevelop -y
		
# Allow customization
CMD ["mono --version"]


