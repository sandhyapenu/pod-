# Use the official Ubuntu image
FROM ubuntu:latest

# Install Apache
RUN apt-get update && apt-get -y install apache2


# Set the ServerName to localhost (you can change it to your domain)
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Expose port 80
EXPOSE 80

# Set the working directory
WORKDIR /var/www/html

# Copy the HTML file into the container
COPY index.html .

# Start Apache in the foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

