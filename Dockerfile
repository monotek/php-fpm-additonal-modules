FROM php:8.4.8-fpm-alpine3.21

RUN docker-php-ext-install mysqli opcache && \
    docker-php-ext-enable mysqli opcache
