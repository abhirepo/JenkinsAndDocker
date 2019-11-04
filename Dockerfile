#This is a sample Image 

FROM ubuntu:18.04 

MAINTAINER Abhishek 

RUN apt-get clean && \
    apt-get update && \
    apt-get -qy install \
                apache2 && rm -rf /var/lib/apt/lists/* 

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
WORKDIR /var/www/html
COPY index.html /var/www/html
ADD *.html /var/www/html
EXPOSE 80
