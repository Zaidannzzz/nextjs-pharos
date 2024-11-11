FROM node:18-alpine AS builder

WORKDIR /nodejs-pharos

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM node:18-alpine AS runner

WORKDIR /nodejs-pharos

COPY --from=builder /nodejs-pharos/.next/standalone ./
COPY --from=builder /nodejs-pharos/.next/static ./.next/static
COPY --from=builder /nodejs-pharos/public ./public

EXPOSE 3000

CMD ["node", "server.js"]

