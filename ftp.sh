#!/bin/sh

sudo docker run \
    -dit \
    --name ftpd \
    -p 21:21 \
    -p 30000-30009:30000-30009 \
    -e PUBLICHOST=localhost \
    -e FTP_USER_NAME=example \
    -e FTP_USER_PASS=example \
    -e FTP_USER_HOME=/home/example \
    -v "/vagrant/data:/home/example" \
    stilliard/pure-ftpd