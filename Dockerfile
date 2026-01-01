FROM ubuntu
WORKDIR /app

RUN apt update
RUN apt install apache2 -y

# Set global ServerName
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY . .
# Expose port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
