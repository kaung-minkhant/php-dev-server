FROM php:fpm

RUN mkdir /entry

COPY ./entrypoints/artisan-entrypoint.sh /entry

RUN chmod +x /entry/artisan-entrypoint.sh

RUN docker-php-ext-install pdo pdo_mysql