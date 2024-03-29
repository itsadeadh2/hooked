FROM node:8.10

WORKDIR /app

COPY package*.json ./

RUN npm install -g serve

RUN npm install

COPY . .

RUN npm run build

CMD ["serve", "-s", "build"]