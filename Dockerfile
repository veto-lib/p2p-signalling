FROM node:14-alpine AS builder

WORKDIR /app

COPY . .
RUN npm ci && npm run build

FROM node:14-alpine

ENV PORT=3000

COPY --from=builder /app/dist /app

CMD node index.js
