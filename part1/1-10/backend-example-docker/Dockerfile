FROM node:10
# This file shall be placed inside the backend-example-docker directory.

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 8000
CMD [ "npm", "start" ]