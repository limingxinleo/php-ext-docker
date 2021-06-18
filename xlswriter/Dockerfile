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
    && apk update

WORKDIR /opt/www/modules

RUN pecl install https://pecl.php.net/get/xlswriter-${XLS_WRITER_VERSION}.tgz \
  && cp /usr/lib/php${PHP_VERSION%\.*}/modules/xlswriter.so /opt/www/modules

VOLUME /opt/www/modules
