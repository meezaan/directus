FROM vesica/php72:latest

# Copy files and set permisions
COPY api/* /var/www/
RUN chown -R www-data:www-data /var/www


# Run composer
RUN composer install --no-dev

# Startup script
COPY startup.sh /usr/local/bin/startup
RUN chmod 755 /usr/local/bin/startup

ENV MYSQL_USER "directus"
ENV MYSQL_PASSWORD "directus"
ENV MYSQL_DATABASE "directus"
ENV MYSQL_HOST "directus-db"
ENV FROM_EMAIL_ADDRESS "you@domain.com"

CMD ["startup"]
