FROM node:12.0 as node
WORKDIR /code
RUN apt-get -y update
COPY package.json ./
RUN npm install
COPY . . 
RUN npm install pm2 -g
EXPOSE 3000
CMD pm2-runtime server.js
