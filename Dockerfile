FROM circleci/android:api-29-node

MAINTAINER Matthias Fischer <m@tthias.space>

USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install npm
RUN npm install -g typescript

RUN mkdir /application

WORKDIR /application