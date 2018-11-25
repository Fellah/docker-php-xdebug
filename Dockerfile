FROM php:7-apache

RUN pecl channel-update pecl.php.net && \
    pecl install xdebug-2.6.1 && \
    docker-php-ext-enable xdebug

COPY docker-php-ext-xdebug-settings.ini /usr/local/etc/php/conf.d

COPY hello_world.php .
