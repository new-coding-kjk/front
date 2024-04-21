FROM krmp-d2hub-idock.9rum.cc/goorm/node:16

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]