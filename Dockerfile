FROM circleci/android:api-29-node

MAINTAINER Matthias Fischer <m@tthias.space>

USER root

RUN npm install -g npm@^4
RUN npm install -g typescript
RUN npm install -g @ionic/cli

RUN mkdir /application

WORKDIR /application