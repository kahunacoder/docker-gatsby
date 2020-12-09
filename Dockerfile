
# develop stage
FROM node:12-alpine
EXPOSE 8000

ARG GATSBY_DIR="/site"
ARG GATSBY_THEME="https://github.com/gatsbyjs/gatsby-starter-default.git"
ARG GIT_USER_NAME=""
ARG GIT_EMAIL=""

ENV CHROME_BIN="/usr/bin/chromium-browser" \
  PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true" \
  GATSBY_DIR=$GATSBY_DIR \
  GATSBY_THEME=$GATSBY_THEME

RUN apk update \
  && apk add wget gnupg \
  && apk add vips-tools vips-dev fftw-dev gcc g++ make libc6-compat autoconf automake libtool musl-dev nasm util-linux \
  && apk add udev ttf-freefont chromium \
  && apk add git \
  && apk add python \
  && rm -rf /var/cache/apk/*

RUN if [[ -z "$GIT_USER_NAME" ]] ; then echo GIT_USER_NAME not provided ; else git config --global user.name $GIT_USER_NAME ; fi
RUN if [[ -z "$GIT_EMAIL" ]] ; then echo GIT_EMAIL not provided ; else git config --global user.email $GIT_EMAIL ; fi

# RUN git config --global user.name $GIT_USER_NAME
# RUN git config --global user.email $GIT_EMAIL

RUN yarn global add gatsby-cli

RUN mkdir -p $GATSBY_DIR
WORKDIR $GATSBY_DIR
VOLUME $GATSBY_DIR


COPY ./entry.sh /
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]

