ARG ANDROID_API_VERSION="android-30"

FROM gorapidio/android-fastlane:${ANDROID_API_VERSION}

ARG NODE_VERSION=v14.17.1

ENV NVM_DIR="$HOME/.nvm"

RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && nvm install $NODE_VERSION

WORKDIR /app
