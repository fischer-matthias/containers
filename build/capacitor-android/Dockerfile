FROM circleci/android:api-29-ndk

MAINTAINER Matthias Fischer <m@tthias.space>

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y build-essential
RUN sudo apt-get upgrade nodejs

# Setup nodejs
RUN npm set prefix ~/.npm
RUN PATH="$HOME/.npm/bin:$PATH"
RUN PATH="./node_modules/.bin:$PATH"

# Install global npm dependencies
RUN npm install -g typescript
RUN npm install -g @angular/cli
RUN npm install -g @ionic/cli

# Check versions
RUN node --version
RUN npm --version

# setting up some envoirement variables
ENV TERM dumb
ENV NG_CLI_ANALYTICS false
ENV GRADLE_USER_HOME /home/circleci/.gradle

# Prepare application directory
RUN mkdir /home/circleci/application
RUN mkdir /home/circleci/dist
WORKDIR /home/circleci/application

RUN sudo chown -R circleci:circleci /home/circleci
RUN sudo chmod -R 755 /home/circleci
