# ---------- Step 1: Build Angular App ----------
FROM node:18-alpine AS builder

WORKDIR /app

# Install Angular CLI globally
RUN npm install -g @angular/cli

COPY package*.json ./
RUN npm install

COPY . .

# For development purposes only (exposes port 4000)
EXPOSE 4000
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4000"]
