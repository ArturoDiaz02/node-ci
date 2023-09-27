FROM node:18

WORKDIR /home/node-ci

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node","/home/node-ci/index.js"]
