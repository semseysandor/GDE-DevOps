# Stage 1: Build app with Composer
FROM composer:2 AS builder

WORKDIR /app
COPY . ./
RUN composer install --no-dev --no-interaction --optimize-autoloader

# Stage 2: runtime image
FROM php:8.2-apache
COPY --from=builder /app /var/www/html

# serve the public/ directory
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri 's@DocumentRoot /var/www/html@DocumentRoot /var/www/html/public@' /etc/apache2/sites-available/*.conf \
 && sed -ri 's@<Directory /var/www/>@<Directory /var/www/html/public>@' /etc/apache2/apache2.conf

# Start Apache and expose port 80
EXPOSE 80
CMD ["apache2-foreground"]
