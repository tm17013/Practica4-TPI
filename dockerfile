FROM ubuntu:bionic

RUN mkdir /docker-imagenes2

WORKDIR /docker-imagenes2

RUN apt update && \
apt install -y figlet

RUN echo "Prueba con Docker"

RUN touch test.txt && \
figlet "Bienvenidos a Docker" > test.txt && \
cat test.txt

