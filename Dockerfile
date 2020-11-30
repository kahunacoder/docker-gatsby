
# develop stage
FROM node:12-alpine
EXPOSE 8000

ENV CHROME_BIN="/usr/bin/chromium-browser" \
  PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

RUN apk update \
  && apk add wget gnupg \
  && apk add --update --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
  && vips-tools vips-dev fftw-dev gcc g++ make libc6-compat autoconf automake libtool musl-dev nasm util-linux \
  && apk add udev ttf-freefont chromium \
  && apk add git \
  && apk add python \
  && rm -rf /var/cache/apk/*

RUN yarn global add gatsby-cli

RUN mkdir -p /site
WORKDIR /site
VOLUME /site

COPY ./entry.sh /
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]

