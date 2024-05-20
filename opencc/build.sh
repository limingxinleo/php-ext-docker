#!/usr/bin/env sh

docker-compose build opencc
docker run --name opencc build/opencc
docker cp opencc:/opt/www/modules/opencc.so opencc-${PHP_VERSION}-alpine-v${ALPINE_VERSION}.so
docker rm opencc
