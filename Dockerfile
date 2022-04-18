FROM node:17-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=pass

RUN mkdir -p ~/demoapp

COPY ./app/* ~/demoapp

WORKDIR ~/demoapp

RUN npm install

CMD ["node", "server.js"]