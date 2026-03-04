# syntax=docker/dockerfile:1.7

FROM node:20-bookworm-slim AS frontend-build
WORKDIR /src/app/frontend
COPY app/frontend/package.json app/frontend/package-lock.json ./
RUN npm ci --legacy-peer-deps
COPY app/frontend ./
RUN npm run build

FROM node:20-bookworm-slim
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=50505
ENV STATIC_DIR=/app/static
WORKDIR /app

COPY app/mockbackend/package.json app/mockbackend/package-lock.json ./
RUN npm ci --omit=dev
COPY app/mockbackend/server.mjs ./server.mjs
COPY --from=frontend-build /src/app/backend/static ./static

EXPOSE 50505
CMD ["node", "server.mjs"]
