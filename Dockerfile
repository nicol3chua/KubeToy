FROM node:10.7

CMD mkdir /app
WORKDIR /app

COPY app.js .
COPY LICENSE .
COPY package.json .
COPY README.md .
COPY views ./views
COPY public ./public

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]