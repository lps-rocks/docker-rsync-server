FROM linuxserver/openssh-server

LABEL org.opencontainers.image.authors="LPS Rocks <admin@lps.rocks>" \
      org.opencontainers.image.url="https://github.com/lps-rocks/docker-rsync-server"

RUN apk add --no-cache rsync

# add local files
COPY /root /

# Default /data volume
VOLUME /data
