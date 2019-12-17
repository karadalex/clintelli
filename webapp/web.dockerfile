FROM nginx

# Use separate file for fastcgi_pass so that envsubst command in docker-compose
# will only change the variable in this file, and not the other variables of
# default.conf
COPY fastcgi_pass.conf /etc/nginx/fastcgi_pass.template.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY public /var/www/public
RUN cd /var/www && mkdir storage && \
    ln -s /var/www/storage/app/public /var/www/public/storage
