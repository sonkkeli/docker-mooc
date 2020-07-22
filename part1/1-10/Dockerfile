FROM node:10

# This file shall be placed inside the frontend-example-docker directory.

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

ENV API_URL=http://localhost:8000
CMD [ "npm", "start" ]