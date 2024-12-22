FROM php:8.4-fpm-alpine

ARG APP_PUID
ARG APP_PGID

RUN addgroup -g ${APP_PGID} app && \
    adduser -D -u ${APP_PUID} -G app app

RUN apk add --update \
    make \
    curl

RUN docker-php-ext-install \
    mysqli \
    pdo_mysql \
    opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD php.ini /usr/local/etc/php/php.ini
ADD php-fpm.conf /usr/local/etc/php-fpm.d/www.conf

WORKDIR /var/www/app

EXPOSE 9000

CMD ["php-fpm", "-F"]
