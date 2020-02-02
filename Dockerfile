FROM circleci/android:api-29-ndk

MAINTAINER Matthias Fischer <m@tthias.space>

USER root

RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN apt-get upgrade nodejs
RUN npm install -g typescript

RUN node --version
RUN npm --version

RUN mkdir /application

WORKDIR /application