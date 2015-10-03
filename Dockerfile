# VERSION 0.1
# DOCKER-VERSION 1.7.1
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:wpa/taupo.git
# 3. Build container: docker build .

FROM alpine

RUN apk add --update nodejs
RUN apk add --update git

COPY . /src
RUN cd /src; npm install

EXPOSE 8888
CMD ["node", "/src/index.js"]

