# This file is a template, and might need editing before it works on your project.
FROM node:7.9

WORKDIR /usr/src/bcoin

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /usr/src/bcoin/
RUN npm install && npm cache clean
COPY . /usr/src/bcoin

CMD [ "./bin/bcoin"]

# replace this with your application's default port
EXPOSE 8888
