#!/usr/bin/env sh

docker-compose build wxwork-finance-sdk
docker run --name wxwork-finance-sdk build/wxwork-finance-sdk
docker cp build/wxwork-finance-sdk:/opt/www/wxwork-finance-sdk.zip wxwork-finance-sdk-${PHP_VERSION}-alpine-v${ALPINE_VERSION}.zip
docker rm build/wxwork-finance-sdk
ls -al
