FROM debian:latest

MAINTAINER AttractGroup

RUN apt-get update && apt-get install -y nginx nginx-extras curl nodejs nodejs-legacy npm git

RUN npm install -g bower && npm install -g gulp

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]