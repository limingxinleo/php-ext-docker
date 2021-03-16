# PHPJIEBA
#
# @link     https://www.hyperf.io
# @document https://doc.hyperf.io
# @contact  group@hyperf.io
# @license  https://github.com/hyperf/hyperf/blob/master/LICENSE

ARG PHP_VERSION
ARG ALPINE_VERSION

FROM hyperf/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-dev

LABEL maintainer="Hyperf Developers <group@hyperf.io>" version="1.0" license="MIT"

ARG YASD_VERSION

RUN set -ex \
    && apk update \
    && apk add boost-dev

WORKDIR /opt/www

RUN wget https://github.com/swoole/yasd/archive/${YASD_VERSION}.tar.gz -O yasd.tar.gz \
    && mkdir -p yasd \
    && tar -xf yasd.tar.gz -C yasd --strip-components=1 \
    && rm yasd.tar.gz \
    && cd yasd \
    && phpize \
    && ./configure \
    && make -j$(nproc)

VOLUME /opt/www/modules
