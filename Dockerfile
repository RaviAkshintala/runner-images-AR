FROM node:18-alpine AS base

WORKDIR /app

COPY --link package.json package-lock.json .

RUN ls -la /app
