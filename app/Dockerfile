FROM quay.io/vesica/php72:latest

# Copy files and set permisions
RUN rm -rf /var/www/html/*
COPY app /var/www/html
COPY htaccess.txt /var/www/html/.htaccess
COPY config.js /var/www/config.js
RUN chown -R www-data:www-data /var/www

# Startup script
COPY startup.sh /usr/local/bin/startup
RUN chmod 755 /usr/local/bin/startup

ENV LOAD_BALANCER_MODE "0"
ENV LOAD_BALANCER_KEY "KEY"

ENV API_URL "http:api1,http://api2"
ENV API_URL2 "http:api1,http://api2"
ENV API_NAME "http:api1,http://api2"
ENV API_NAME2 "http:api1,http://api2"

CMD ["startup"]
