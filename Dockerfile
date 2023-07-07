FROM node:14
RUN apt-get update
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENTRYPOINT ["node" , "server.js"]
