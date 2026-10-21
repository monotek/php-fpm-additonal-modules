FROM 8.5.12-fpm-alpine3.24

RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli
