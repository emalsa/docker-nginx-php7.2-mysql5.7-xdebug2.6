FROM php:7.2.0-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug

COPY ./xdebug.ini ../../../usr/local/etc/php/conf.d/xdebug.ini