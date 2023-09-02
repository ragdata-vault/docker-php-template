FROM php:8-cli

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install \
    	pdo \
    	pdo_mysql \

WORKDIR /project

EXPOSE 80/tcp
