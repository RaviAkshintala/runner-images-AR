FROM node:18-alpine AS base

WORKDIR /src

COPY package.json package-lock.json /src/

RUN ls -la /src
