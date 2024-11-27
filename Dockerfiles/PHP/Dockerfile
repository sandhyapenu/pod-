# Use an official PHP image as the base image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install additional dependencies if needed
# For example, if you are using MySQL, you might need the mysqli extension
# RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Expose port 80 for Apache
EXPOSE 80

# Start Apache when the container starts
CMD ["apache2-foreground"]

