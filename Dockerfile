FROM ubuntu:14.04

MAINTAINER <e1ee1e11>

RUN apt-get install -y openssh-server

RUN useradd ubuntu

RUN echo "ubuntu" |passwd --stdin ubuntu

EXPOSE 22
EXPOSE 5566
