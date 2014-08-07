#
# Node.js
#

FROM ubuntu:14.04

RUN apt-get update -y && apt-get install -y -q curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN sudo apt-get install -y -q nodejs

WORKDIR /app
ADD package.json /app/
RUN npm install
ADD . /app

EXPOSE 3000
CMD []
ENTRYPOINT ["npm", "start"]
