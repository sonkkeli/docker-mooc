FROM node:10-alpine

ENV API_URL=http://localhost:8000
WORKDIR /app
COPY . .

RUN npm install \
  && adduser -D app

USER app

EXPOSE 5000
CMD [ "npm", "start" ]