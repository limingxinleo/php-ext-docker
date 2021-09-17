#!/usr/bin/env sh

docker-compose build pgsql
docker run --name pgsql build/pgsql
docker cp pgsql:/opt/www/build/modules/swoole_postgresql.so swoole_postgresql-${PHP_VERSION}-alpine-v${ALPINE_VERSION}.so
docker rm pgsql
ls -al
