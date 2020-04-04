FROM node

MAINTAINER crespum <xabi@crespum.eu>

# Install HEXO
RUN npm install hexo-cli -g
RUN npm install hexo-server -g

# Workdir
WORKDIR /app
VOLUME  /app

EXPOSE 4000
