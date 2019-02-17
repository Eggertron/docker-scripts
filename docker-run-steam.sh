#!/bin/sh
# This script uses Tianon Steam Docker Image
# https://hub.docker.com/r/tianon/steam
# 
# Can be pulled from:
# docker pull tianon/steam

docker run --name=steam \
 -v /dev/dri:/dev/dri \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v /dev/shm:/dev/shm \
 -v /run/user/${UID}/pulse:/run/user/${UID}/pulse \
 -v /etc/machine-id:/etc/machine-id \
 -v ${HOME}/Downloads:/tmp/Downloads \
 --privileged=true \
 -e DISPLAY=${DISPLAY} \
 tianon/steam
