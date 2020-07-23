FROM node:10-alpine

ENV FRONT_URL=http://localhost:5000
WORKDIR /app
COPY . .

RUN npm install \
  && adduser -D app

USER app

EXPOSE 8000
CMD [ "npm", "start" ]