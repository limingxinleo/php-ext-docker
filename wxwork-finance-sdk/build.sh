#!/usr/bin/env sh

docker compose build wxwork-finance-sdk
docker run --name wxwork-finance-sdk build/wxwork-finance-sdk
docker cp wxwork-finance-sdk:/opt/www/wxwork-finance-sdk.zip wxwork-finance-sdk-${PHP_VERSION}-alpine-v${ALPINE_VERSION}.zip
docker rm wxwork-finance-sdk
ls -al
