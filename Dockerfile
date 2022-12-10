FROM php:8.0-apache

RUN apt-get update && apt-get upgrade -y
COPY ./index.php /var/www/html/index.php


EXPOSE 80
CMD apachectl -D FOREGROUND