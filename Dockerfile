FROM circleci/android:api-29-node

MAINTAINER Matthias Fischer <m@tthias.space>

RUN sudo npm install -g npm@^4
RUN sudo npm install -g typescript
RUN sudo npm install -g @ionic/cli