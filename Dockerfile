FROM node:24-trixie-slim@sha256:8ec5d7557396cfe32d21c3f9c13072355ceab22b584578ca4bb28af31120cffe
RUN npm install --global corepack && corepack enable
WORKDIR /app
COPY ./ ./
RUN pnpm --version
ENTRYPOINT ["pnpm", "install", "--lockfile-only"]
