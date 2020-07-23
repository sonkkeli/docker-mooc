FROM node:10-alpine as build-stage

ENV API_URL=http://localhost:8000
# WORKDIR /app
COPY . .

RUN npm install && npm run build

FROM node:10-alpine

COPY --from=build-stage dist dist
RUN npm install -g serve && adduser -D app

USER app

EXPOSE 5000
CMD [ "serve", "-s", "-l", "5000", "dist" ]