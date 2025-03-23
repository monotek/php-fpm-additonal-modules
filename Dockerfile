FROM php:8.4.5-fpm-alpine3.21

RUN docker-php-ext-install gd && \
    docker-php-ext-enable gd && \
    docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli 
