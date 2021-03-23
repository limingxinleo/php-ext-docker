# PHP Extensions in Docker

## Yasd

[swoole/yasd](https://github.com/swoole/yasd)

以下的 `yasd-${yasd-version}/yasd-${php-version}-alpine-${alpine-version}.so` 按实际情况填写

```shell
apk add boost-dev
wget https://github.com/limingxinleo/php-ext-docker/releases/download/yasd-v0.3.7/yasd-7.4-alpine-v3.11.so -O /usr/lib/php7/modules/yasd.so
echo "extension=yasd.so" >> /etc/php7/conf.d/50_yasd.ini
```

## Xlswriter

[viest/php-ext-xlswriter](https://github.com/viest/php-ext-xlswriter)

以下的 `xlswriter-${xlswriter-version}/xlswriter-${php-version}-alpine-${alpine-version}.so` 按实际情况填写

```shell
wget https://github.com/limingxinleo/php-ext-docker/releases/download/xlswriter-v1.3.7/xlswriter-7.3-alpine-v3.11.so -O /usr/lib/php7/modules/xlswriter.so
echo "extension=xlswriter.so" >> /etc/php7/conf.d/50_xlswriter.ini
```
