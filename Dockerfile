FROM php:8.5.3-fpm-alpine3.22

RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli
