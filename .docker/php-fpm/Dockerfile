FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    libpq-dev \
    zip unzip \
    && docker-php-ext-install pdo pdo_pgsql pgsql pcntl \
    && pecl install redis \
    && docker-php-ext-enable redis

RUN adduser dev --disabled-password --uid 1000

RUN chown 1000:1000 -R /var/www

USER 1000:1000

WORKDIR /var/www/html