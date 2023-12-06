# Use an official Apache base image
FROM httpd:latest

# Copy a sample HTML page to the Apache document root
COPY ./index.html /usr/local/apache2/htdocs/index.html
