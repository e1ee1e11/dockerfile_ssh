FROM ubuntu:14.04

MAINTAINER <e1ee1e11>

RUN apt-get install -y openssh-server

RUN mkdir /var/run/sshd

RUN useradd ubuntu

RUN echo "ubuntu:ubuntu" | chpasswd

EXPOSE 22
EXPOSE 5566

CMD ["/usr/sbin/sshd", "-D"]
