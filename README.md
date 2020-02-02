[![Build Status](https://travis-ci.com/fischer-matthias/capacitor-android.svg?branch=master)](https://travis-ci.com/fischer-matthias/capacitor-android)

# capacitor-android

simple docker image to build a ionic project with capacitor.

## how to

`travis.yml`:

```
sudo: required

services:
  - docker

jobs:
  include:
    - stage: build
      script:
        - docker run -it --rm -v "$PWD":/home/circleci/application fischermatthias/capacitor-android:latest
```

## !!important!!

Your project must include a `build.sh` file.

## credits

based on [circleci/android:api-29-node](https://hub.docker.com/r/circleci/android)
