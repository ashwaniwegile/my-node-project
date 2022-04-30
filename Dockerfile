FROM node:14 as node
WORKDIR /code
COPY package.json ./
RUN npm install
COPY . . 
RUN npm install pm2 -g
EXPOSE 3000
CMD pm2-runtime index.js
