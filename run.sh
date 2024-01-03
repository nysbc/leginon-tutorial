#!/bin/bash

if [[ ! $(docker volume ls -q | grep mariadb) ]]; then
  echo Creating Docker volume for mariadb-database...
  docker volume create leginon-mariadb
else
  echo Using existing leginon-mariadb volume.
fi
echo Done.

# Change these if you already have other services running on default ports
WEBPORT=8000
VNCPORT=5901
DBPORT=53306

docker run -d -t \
  --privileged \
  -v $(pwd)/emg/data:/emg/data \
  -v leginon-mariadb:/var/lib/mysql \
  -v $(pwd):/local_data \
  -v $(pwd)/config/httpd.conf:/etc/httpd/conf/httpd.conf \
  -w /sw/myami/appion \
  -e DISPLAY=host.docker.internal:0 \
  -p $WEBPORT:80 -p $VNCPORT:5901 -p $DBPORT:3306 \
  semc/leginon-tutorial:beta

echo Waiting for database...
sleep 10
echo Done.
