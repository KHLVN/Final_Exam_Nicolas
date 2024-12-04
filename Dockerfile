FROM php:8.1-apache

RUN apt-get update && apt-get install -y default-mysql-client

RUN a2enmod rewrite

COPY ./src /var/www/html/

WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
