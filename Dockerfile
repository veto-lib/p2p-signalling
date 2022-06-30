FROM node:14-alpine AS builder

WORKDIR /app
COPY . .

RUN npm ci && npm run build
RUN cp -r node_modules dist/

FROM node:14-alpine

ENV PORT=3000

COPY --from=builder /app/dist /app

WORKDIR /app

CMD node index.js
