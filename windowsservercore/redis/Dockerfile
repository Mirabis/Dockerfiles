FROM mirabis/chocolatey:windowsserver
MAINTAINER Moreno Sint Hill (Mirabis) <info@mirabis.nl>
LABEL Creator=Mirabis \
      docker.mirabis.is-beta=False \
	  docker.mirabis.service-can-auto-update=False \
      docker.mirabis.release-date="20-05-2016"

ENV REDIS_VER=3.*
ENV APP_DIR c:\\ProgramData\\chocolatey\\lib\\redis-64
# Install Windows Version of Redis 3
RUN choco install redis-64 -y
		
# Seperate mounting options for logs, config & data
# C:\ProgramData\chocolatey\lib\redis-64\redis.windows.conf for config file

WORKDIR %APP_DIR%

EXPOSE 6379

# Allow customization
CMD ["redis-server"]


