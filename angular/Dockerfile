FROM node:8.0-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
ENV PATH ./node_modules/.bin:$PATH
RUN ng build
