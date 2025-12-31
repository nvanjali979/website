FROM ubuntu
RUN apt update
RUN apt install apache2 -y
ADD . /var/www/html
# Set global ServerName
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Expose port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
