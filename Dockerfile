FROM node:12

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./
COPY tsconfig.json ./
COPY tsconfig.build.json ./

RUN npm install

CMD [ "npm", "run", "start:dev" ]