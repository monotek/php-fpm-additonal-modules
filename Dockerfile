FROM php:8.6.0-fpm-alpine3.24

RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli
