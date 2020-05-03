FROM ubuntu:latest

WORKDIR /1-7 
COPY . .
RUN apt-get update && apt-get install -y curl 

RUN chmod +x ./init.sh

ENTRYPOINT ["./init.sh"]