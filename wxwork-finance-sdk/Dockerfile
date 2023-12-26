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

WORKDIR /opt/www

RUN git clone https://github.com/pangdahua/php7-wxwork-finance-sdk.git \
    && mv php7-wxwork-finance-sdk build \
    && cd build \
    && pwd \
    && phpize \
    && ./configure --with-wxwork-finance-sdk=/opt/www/build \
    && make -j$(nproc) \
    && make install
