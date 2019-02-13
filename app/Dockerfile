FROM vesica/php72:latest

# Copy files and set permisions
RUN rm -rf /var/www/html/*
COPY app /var/www/html
COPY config.js /var/www/config.js
RUN chown -R www-data:www-data /var/www

# Startup script
COPY startup.sh /usr/local/bin/startup
RUN chmod 755 /usr/local/bin/startup

ENV APIS "http:api1,http://api2"

CMD ["startup"]
