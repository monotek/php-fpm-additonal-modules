FROM php:8.4.5-fpm

RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli
