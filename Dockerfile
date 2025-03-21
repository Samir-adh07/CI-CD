# Use official PHP Apache image
FROM php:8.2-apache

# Copy project files to Apache document root
COPY . /var/www/html/

# Enable Apache rewrite module
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

CMD ["apache2-foreground"]
