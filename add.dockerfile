FROM fedora
RUN dnf install httpd -y
ADD https://medium.com/@katyctherapy/ten-ways-to-cope-with-pandemic-panic-3dc51cf73f62  /var/www/html/
EXPOSE 80
CMD httpd -DFOREGROUND
