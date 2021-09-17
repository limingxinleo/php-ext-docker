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

ARG SWOOLE_VERSION

RUN set -ex \
    && apk update \
    && apk add postgresql-dev \
    && cp /usr/include/libpq-fe.h /usr/include/postgresql/

WORKDIR /opt/www

RUN wget https://github.com/swoole/swoole-src/archive/${SWOOLE_VERSION}.tar.gz -O build.tar.gz \
    && mkdir -p build \
    && tar -xf build.tar.gz -C build --strip-components=1 \
    && rm build.tar.gz \
    && cd build \
    && phpize \
    && ./configure --enable-openssl --enable-http2 --enable-swoole-curl --enable-swoole-json \
    && make -j$(nproc) \
    && make install \
    && cd .. \
    && rm -rf build \
    && wget https://github.com/swoole/ext-postgresql/archive/${SWOOLE_VERSION}.tar.gz -O build.tar.gz \
    && mkdir -p build \
    && tar -xf build.tar.gz -C build --strip-components=1 \
    && rm build.tar.gz \
    && cd build \
    && phpize \
    && ./configure \
    && make -j$(nproc) \
    && make install

VOLUME /opt/www/modules
