#This is a sample Image 

FROM ubuntu 

MAINTAINER demo@gmail.com 

RUN apt-get clean && \
    apt-get update && \
    apt-get -qy install \
                wget \
                telnet \
                iputils-ping \
                unzip

CMD [“echo”,”Image created”]
