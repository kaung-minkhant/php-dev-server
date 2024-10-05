FROM php:fpm

ARG USER

RUN useradd -ms /bin/bash $USER

RUN apt-get update &&  apt-get upgrade -y && apt-get install -y \
  unzip

RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo pdo_mysql

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php --filename=composer --install-dir=/usr/local/bin \
  && php -r "unlink('composer-setup.php');"

RUN apt install -y unzip

WORKDIR /app
