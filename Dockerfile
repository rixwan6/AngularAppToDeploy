# ---------- Step 1: Build Angular App ----------
FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN ng server --port 4000
