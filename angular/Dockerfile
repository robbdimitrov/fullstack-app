FROM node:8.0-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g @angular/cli@v1.4.3
COPY . .
RUN npm install
