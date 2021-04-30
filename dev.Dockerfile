FROM node:14-buster

RUN apt-get update && apt-get install -y libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb

WORKDIR /usr/src/app

COPY package*.json ./
COPY cypress.json ./
ADD cypress ./cypress

RUN npm install

CMD ["/bin/bash"]