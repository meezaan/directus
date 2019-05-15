FROM quay.io/vesica/php72:latest

# Copy files and set permisions
COPY api /var/www
COPY .htaccess /var/www/html/.htaccess
COPY config.php /var/www/config.php

# VOLUME /var/www/public/uploads
RUN chown -R www-data:www-data /var/www

# Run composer
#RUN cd /var/www && composer install --no-dev

# Startup script
COPY startup.sh /usr/local/bin/startup
RUN chmod 755 /usr/local/bin/startup

ENV LOAD_BALANCER_MODE "0"
ENV LOAD_BALANCER_KEY "KEY"

ENV MYSQL_USER "directus"
ENV MYSQL_PASSWORD "directus"
ENV MYSQL_DATABASE "directus"
ENV MYSQL_HOST "directus-db"
ENV FROM_EMAIL_ADDRESS "you@domain.com"


CMD ["startup"]
