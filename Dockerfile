FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN rm -f /var/www/html/index.html
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
