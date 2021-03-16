#!/usr/bin/env sh

docker-compose build yasd
docker run --name yasd build/yasd
docker cp yasd:/opt/www/yasd/modules/yasd.so yasd-${PHP_VERSION}-alpine-v${ALPINE_VERSION}.so
docker rm yasd
ls -al
