FROM node:18-alpine AS base

WORKDIR /src

COPY --link package.json package-lock.json .

RUN ls -la /src
