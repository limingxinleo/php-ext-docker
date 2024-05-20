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

ARG PHP_VERSION
ARG XLS_WRITER_VERSION

RUN set -ex \
    && apk update \
    && apk add cmake doxygen

WORKDIR /opt/www/modules

RUN apk add opencc-dev \
    && git clone https://github.com/NauxLiu/opencc4php.git --depth 1 \
    && cd opencc4php \
    && phpize \
    && ./configure \
    && make \
    && cp modules/opencc.so /opt/www/modules/opencc.so

VOLUME /opt/www/modules
