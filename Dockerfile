FROM ubuntu:xenial

WORKDIR /var/www/html

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y apache2 php 
COPY index.html ./
RUN service apache2 start

EXPOSE 80 433
