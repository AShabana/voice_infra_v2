#FROM 937907730099.dkr.ecr.us-east-1.amazonaws.com/opensips
FROM ubuntu:latest
MAINTAINER Shabana <a.shabana@cequens.com>

USER root
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
WORKDIR /usr/local/src 
ADD source .
RUN echo "deb http://cz.archive.ubuntu.com/ubuntu trusty main universe" >> /etc/apt/sources.list && apt-get update && apt-get install -y  build-essential librabbitmq-dev uuid-dev bison flex m4 pkg-config libncurses5-dev rsyslog libradiusclient-ng-dev libhiredis-dev libxml2 libxml2-dev libpcre3 libpcre3-dev libmysqlclient-dev libssl-dev libssl1.0.0 libconfuse-dev libjson-c-dev libmicrohttpd-dev libmicrohttpd10 libmysqlclient18 libcurl4-gnutls-dev mysql-client && cd /usr/lib/x86_64-linux-gnu/ && ln -s libpcre.so libpcre.so.1 && ln -s libssl.so.1.0.0 libssl.so.10 && ln -s libcrypto.so.1.0.0 libcrypto.so.10 && ln -s librabbitmq.so librabbitmq.so.1 && cd /usr/local/src && make all include_modules="db_mysql rest_client aaa_radius b2b_logic json xml httpd dialplan rabbitmq" modules && make install include_modules="db_mysql rest_client aaa_radius b2b_logic json xml httpd dialplan rabbitmq" modules && make install

#RUN echo -e "local0.* -/var/log/opensips.log\n& stop" > /etc/rsyslog.d/opensips.conf
#RUN touch /var/log/opensips.log
#RUN service rsyslog start


#COPY run.sh /usr/local/src/run.sh

#ENTRYPOINT ["/usr/local/src/run.sh"]
