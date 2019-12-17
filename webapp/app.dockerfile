FROM php:7.3-fpm

RUN apt-get update \ 
    && apt-get install -y libmcrypt-dev zip libzip-dev \
    libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo pdo_mysql xml gd zip mbstring bcmath sockets

WORKDIR /var/www

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'baf1608c33254d00611ac1705c1d9958c817a1a33bce370c0595974b342601bd80b92a3f46067da89e3b06bff421f182') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');"

WORKDIR /var/www
COPY . /var/www
RUN chown -R www-data:www-data /var/www
RUN chmod -R 777 /var/www

RUN php composer.phar install --no-dev --no-scripts --optimize-autoloader \
    && rm composer.phar

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["php-fpm"]
