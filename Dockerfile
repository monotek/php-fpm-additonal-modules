FROM php:8.4.5-fpm

USER root

# RUN apk update && \
#     apk add libpng-dev mysql-dev oniguruma-dev

RUN apt-get update && \
    apt-get install -y libpng-dev default-libmysqlclient-dev 

ENV PHP_MODULES mysqli pdo pdo_mysql

RUN docker-php-source extract && \
    docker-php-ext-install $PHP_MODULES && \
    docker-php-ext-enable $PHP_MODULES && \
    docker-php-source delete

USER www-data
