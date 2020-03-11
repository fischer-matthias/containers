[![Build Status](https://travis-ci.com/fischer-matthias/capacitor-android.svg?branch=master)](https://travis-ci.com/fischer-matthias/capacitor-android)

# capacitor-android

simple docker image to build an ionic project with capacitor.

## how to

`Dockerfile`:

```
FROM fischermatthias/capacitor-android:latest

# project files into image
COPY . ./

# make runscript executable and change ownership
RUN sudo chmod +x ./build.sh
RUN sudo chown circleci:circleci ./build.sh

# run build script
CMD ["./build.sh"]
```

`.travis.yml`:

```
services:
  - docker

install:
  - docker build -t fischermatthias/application-name .

script:
  - docker run -it --rm fischermatthias/application-name
```

## credits

based on [circleci/android:api-29-node](https://hub.docker.com/r/circleci/android)
