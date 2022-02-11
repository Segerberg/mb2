FROM php:8.0-apache
WORKDIR /var/www
RUN mkdir data
RUN chmod 777 data
COPY config/ports.conf /etc/apache2/ports.conf
COPY config/000-default.conf /etc/apache2/sites-enabled/000-default.conf

COPY webroot html

VOLUME ./data /var/www/data


EXPOSE 8080
