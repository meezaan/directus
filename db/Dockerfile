FROM percona:5.7

ENV MYSQL_USER "directus"
ENV MYSQL_PASSWORD "directus"
ENV MYSQL_DATABASE "directus"

EXPOSE 3306

# Copy and Insert DB Backup
ADD db.sql /docker-entrypoint-initdb.d/
