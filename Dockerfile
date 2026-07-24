FROM node:24

WORKDIR /usr/src/app

COPY package*.json .npmrc ./

RUN npm ci

COPY . .

EXPOSE 8000

CMD ["npm", "start"]