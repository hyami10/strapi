FROM node:18

WORKDIR /app

COPY . .

RUN npm install -g yarn

RUN yarn install

WORKDIR /app/packages/strapi-app

RUN yarn build

EXPOSE 1337

CMD ["sh", "/app/start.sh"]
