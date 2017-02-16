FROM node:0.10
MAINTAINER naresh raparthi <naesh.raparthiz@gmail.com>
LABEL "GameName"="candycrush" "versio "="1.9.0" "Environment"="Production"
USER root
ENV AP /data/app
ENV SCPATH /etc/supervisor/conf.d
RUN yum -y update
RUN yum -y install supervisor
ADD ./supervisord/conf.d/* $SCPATH
ADD *js* $AP
WORKDIR $AP
RUN npm install
CMD ["supervisor", "-n"]

