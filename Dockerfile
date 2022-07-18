# build environment
FROM node:16.15.0-alpine AS builder
WORKDIR /frontend
ENV PATH /frontend/node_modules/.bin:$PATH

COPY ./frontend/package.json ./
COPY ./frontend/package-lock.json ./

RUN npm install --silent

COPY ./frontend ./

CMD ["npm", "start"]
