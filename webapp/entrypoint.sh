#!/bin/bash

cd /var/www
php artisan storage:link
# php artisan voyager:install

# Entrypoint for command
exec "$@"