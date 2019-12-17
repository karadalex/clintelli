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
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
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
