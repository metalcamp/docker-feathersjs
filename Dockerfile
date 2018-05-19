FROM node:8.11.2

ENV DIR=/opt/app

RUN mkdir $DIR

WORKDIR $DIR

RUN yarn add @feathersjs/feathers && \
    feathers generate-app

EXPOSE 8080

CMD ['yarn', 'start']

