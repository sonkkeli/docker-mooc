FROM node:10

WORKDIR /usr/src/app
COPY . .
RUN npm install

ENV FRONT_URL=http://localhost:5000
EXPOSE 8000
CMD [ "npm", "start" ]