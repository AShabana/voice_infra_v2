FROM 937907730099.dkr.ecr.us-east-1.amazonaws.com/rtpproxy:latest

MAINTAINER cequens voice team

ADD ./source /src
WORKDIR /src

RUN ls && pwd && sh configure && make && make install

