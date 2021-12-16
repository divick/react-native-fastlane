#!/bin/bash

_usage="
Usage: TARGET_SDK=[28|29|30] ./bin/build-image.sh
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
docker build -t gorapidio/react-native-fastlane:android-${TARGET_SDK} -f android-${target}/Dockerfile android-${target}/
