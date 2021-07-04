#!/bin/bash

_usage="
Usage: TARGET_SDK=[28|29|30] REACTNATIVE_VERSION=[0.63.2|...] ./bin/build-image.sh
"
if [[ ! -v TARGET_SDK ]]; then
  echo "Please specify TARGET_SDK to build.";
  echo "$_usage";
  exit;
elif [[ -z "${TARGET_SDK}" ]]; then
  echo "TARGET_SDK cannot be empty. Please specify TARGET_SDK to build";
  echo "$_usage";
  exit;
else
    target=${TARGET_SDK}
fi
if [[ -z REACTNATIVE_VERSION ]]; then
    docker build --build-arg REACTNATIVE_VERSION=$REACTNATIVE_VERSION -t gorapidio/react-native-fastlane -f android-${target}/Dockerfile android-${target}/
else
    docker build -t gorapidio/react-native-fastlane:android-${TARGET_SDK} -f android-${target}/Dockerfile android-${target}/
fi
