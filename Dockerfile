# Installieren von der MongoDB in ein Container per Docker

FROM ubuntu
MAINTAINER Michael Gerber

RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install mongodb-10gen

#RUN der Konfiguration des Container
COPY mongodb.conf /etc/mongodb.conf

CMD ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"] 