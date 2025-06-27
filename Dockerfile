FROM node:18-alpine

# Enable Corepack & Yarn v4
RUN corepack enable && corepack prepare yarn@4.5.0 --activate

WORKDIR /app

# Salin semua file proyek ke dalam container
COPY ./app/ .

# Jalankan yarn install setelah semua file tersedia
RUN yarn install

RUN yarn build

EXPOSE 1337
CMD ["yarn", "start"]
