FROM php:fpm

RUN apt-get update &&  apt-get upgrade -y && apt-get install -y \
  unzip

RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /src
