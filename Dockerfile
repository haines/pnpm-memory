FROM node:24-trixie-slim@sha256:05c08ce4291e9a58f59456a7985176defb12cdd42271f35ff81a3e167ea61d4c
RUN npm install --global corepack && corepack enable
WORKDIR /app
COPY ./ ./
RUN pnpm --version
ENTRYPOINT ["pnpm", "install", "--lockfile-only"]
