# Pull base image.
FROM node:4.1.2

EXPOSE 3000

RUN npm install -g gulp

# Define working directory.
WORKDIR /app

COPY ./package.json /app/

RUN npm install

COPY . /app/

# devguide no need angular
CMD gulp serve-and-sync-devguide

