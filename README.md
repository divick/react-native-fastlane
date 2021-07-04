# react-native-fastlane

## What is this image for?

  Use this image to have required tools like JAVA, android sdk and build tools,
  ruby, fastlane and node preinstalled for building react-native apps.

  You can use this image for your gitlab or other CI/CD builds too.

## Requirements

  * docker version 18.09 or above

## How Tos

### Build the docker image

#### Using helper script in bin directory, for a given TARGET_SDK

```
TARGET_SDK=30 ./bin/build-image.sh
```

#### To override the [React Native version] version
```
REACTNATIVE_VERSION=0.62.1 TARGET_SDK=30 ./bin/build-image.sh

```
