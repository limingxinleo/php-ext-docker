#!/usr/bin/env sh

docker-compose build wxwork-finance-sdk
docker run --name wxwork-finance-sdk build/wxwork-finance-sdk
docker cp wxwork-finance-sdk:/opt/www/build/modules/wxwork_finance_sdk.so wxwork_finance_sdk-${PHP_VERSION}-alpine-v${ALPINE_VERSION}.so
docker rm wxwork-finance-sdk
ls -al
