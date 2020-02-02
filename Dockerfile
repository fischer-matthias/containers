FROM circleci/android:api-29-ndk

MAINTAINER Matthias Fischer <m@tthias.space>

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y build-essential
RUN sudo apt-get upgrade nodejs

# Setup nodejs
RUN echo $HOME
RUN npm set prefix ~/.npm
RUN PATH="$HOME/.npm/bin:$PATH"
RUN PATH="./node_modules/.bin:$PATH"

RUN npm install -g typescript

# Check versions
RUN node --version
RUN npm --version
RUN whoami

# Prepare application directory
RUN mkdir /home/circleci/application
RUN chmod +w /home/circleci/application

WORKDIR /home/circleci/application
ENTRYPOINT ["/home/circleci/application/build.sh"]