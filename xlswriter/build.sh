#!/usr/bin/env sh

docker-compose build xlswriter
docker run --name xlswriter build/xlswriter
docker cp xlswriter:/opt/www/modules/xlswriter.so xlswriter-${PHP_VERSION}-alpine-v${ALPINE_VERSION}.so
docker rm xlswriter
