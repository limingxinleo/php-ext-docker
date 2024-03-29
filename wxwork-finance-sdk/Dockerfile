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

RUN apk update \
    && apk add zip \
    && git clone https://github.com/pangdahua/php7-wxwork-finance-sdk.git \
    && mv php7-wxwork-finance-sdk build \
    && cd build \
    && wget https://srb-material.missxiaolin.com/2023/12/26/d4946b07-e4fb-424f-baa0-1238693bf685.zip -O sdk.zip \
    && unzip sdk.zip \
    && phpize \
    && ./configure --with-wxwork-finance-sdk=/opt/www/build/wework_c_sdk \
    && make -j$(nproc) \
    && make install \
    # 打包文件
    && mkdir /opt/www/modules/ \
    && mv /opt/www/build/modules/wxwork_finance_sdk.so /opt/www/modules/ \
    && mv /opt/www/build/wework_c_sdk/WeWorkFinanceSdk_C.h /opt/www/modules/ \
    && mv /opt/www/build/wework_c_sdk/libWeWorkFinanceSdk_C.so /opt/www/modules/ \
    && zip -q -r /opt/www/wxwork-finance-sdk.zip /opt/www/modules/
