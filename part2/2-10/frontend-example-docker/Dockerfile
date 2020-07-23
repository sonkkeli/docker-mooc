FROM node:10

WORKDIR /usr/src/app
COPY . .
RUN npm install

ENV API_URL=http://localhost:8000
EXPOSE 5000
CMD [ "npm", "start" ]