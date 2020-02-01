FROM circleci/android:api-29-node

MAINTAINER Matthias Fischer <m@tthias.space>

USER root

RUN apt-get install npm
RUN npm install -g typescript

RUN mkdir /application

WORKDIR /application